#!/bin/bash
# Simple installation script for llvm/clang.

set -e
set -o pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPT_RELATIVE_PATH="$(basename "${BASH_SOURCE[0]}")"
CLANG_RELATIVE_SRC="src/clang-5.0.tar.xz"
CLANG_SRC="$SCRIPT_DIR/$CLANG_RELATIVE_SRC"
CLANG_PATCH="$SCRIPT_DIR/src/AttrDump.inc.patch"
CLANG_PREFIX="$SCRIPT_DIR/install"
CLANG_INSTALLED_VERSION_FILE="$SCRIPT_DIR/installed.version"

SHA256SUM="shasum -a 256 -p"

usage () {
    echo "Usage: $0 [-chr]"
    echo
    echo " options:"
    echo "    -c,--only-check-install    check if recompiling clang is needed"
    echo "    -h,--help                  show this message"
    echo "    -r,--only-record-install   do not install clang but pretend we did"
}

check_installed () {
    pushd "$SCRIPT_DIR" > /dev/null
    $SHA256SUM -c "$CLANG_INSTALLED_VERSION_FILE" >& /dev/null
    local result=$?
    popd > /dev/null
    return $result
}

record_installed () {
    pushd "$SCRIPT_DIR" > /dev/null
    $SHA256SUM "$CLANG_RELATIVE_SRC" "$SCRIPT_RELATIVE_PATH" > "$CLANG_INSTALLED_VERSION_FILE"
    popd > /dev/null
}

ONLY_CHECK=
ONLY_RECORD=

while [[ $# -gt 0 ]]; do
    opt_key="$1"
    case $opt_key in
        -c|--only-check-install)
            ONLY_CHECK=yes
            shift
            continue
            ;;
        -r|--only-record-install)
            ONLY_RECORD=yes
            shift
            continue
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            usage
            exit 2
    esac
    shift
done

if [ "$ONLY_RECORD" = "yes" ]; then
    record_installed
    exit 0
fi

if check_installed; then
    # already installed
    if [ "$ONLY_CHECK" = "yes" ]; then
        exit 0
    fi
    echo "Clang is already installed according to $CLANG_INSTALLED_VERSION_FILE"
    echo "Nothing to do, exiting."
    exit 0
else
    if [ "$ONLY_CHECK" = "yes" ]; then
        exit 1
    fi
fi

platform=`uname`

CMAKE_ARGS=(
  -DCMAKE_INSTALL_PREFIX="$CLANG_PREFIX"
  -DCMAKE_BUILD_TYPE=Release
  -DCMAKE_C_FLAGS="$CFLAGS $CMAKE_C_FLAGS"
  -DCMAKE_CXX_FLAGS="$CXXFLAGS $CMAKE_CXX_FLAGS"
  -DLLVM_ENABLE_ASSERTIONS=Off
  -DLLVM_ENABLE_EH=On
  -DLLVM_ENABLE_RTTI=On
)

if [ "$platform" = "Darwin" ]; then
    CMAKE_ARGS+=(
      -DLLVM_ENABLE_LIBCXX=On
      -DCMAKE_SHARED_LINKER_FLAGS="$LDFLAGS $CMAKE_SHARED_LINKER_FLAGS"
    )
else
    CMAKE_ARGS+=(
      -DCMAKE_SHARED_LINKER_FLAGS="$LDFLAGS $CMAKE_SHARED_LINKER_FLAGS -lstdc++"
    )
fi

# start the installation
if [ -n "$CLANG_TMP_DIR" ]; then
    TMP=$CLANG_TMP_DIR
else
    TMP=`mktemp -d /tmp/clang-setup.XXXXXX`
fi
pushd "$TMP"

if tar --version | grep -q 'GNU'; then
    # GNU tar is too verbose if the tarball was created on MacOS
    QUIET_TAR="--warning=no-unknown-keyword"
fi
echo "unpacking '$CLANG_SRC'..."
tar --extract $QUIET_TAR --file "$CLANG_SRC"

mkdir build
pushd build

# workaround install issue with ocaml llvm bindings and ocamldoc
mkdir -p docs/ocamldoc/html

cmake -G "Unix Makefiles" ../llvm "${CMAKE_ARGS[@]}" $CLANG_CMAKE_ARGS

JOBS="$(getconf _NPROCESSORS_ONLN 2>/dev/null || echo 1)"

make -j $JOBS

echo "testing clang build"
./bin/clang --version

make -j $JOBS install

popd # build
popd # $TMP

# brutally strip everything, ignore errors
set +e
find "$CLANG_PREFIX"/{bin,lib} -type f -exec strip -x \{\} \+
set -e

echo "testing installed clang"
"$CLANG_PREFIX"/bin/clang --version

echo "deleting temp dir '$CLANG_TMP_DIR'..."
if [ -n "$CLANG_TMP_DIR" ]; then
    rm -rf "$TMP/*"
else
    rm -rf "$TMP"
fi

record_installed
