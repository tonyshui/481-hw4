/*
 * Copyright (c) 2013 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import <stdio.h>

int m1() {
  int value = 0;
  while (value < 10) {
    switch (value) {
      int x = 1;
      printf("(out)HELLO WORLD!");
      x = value + 1;
      case 0:
        printf("(0)HELLO WORLD!");
        break;
      case 1:
        printf("(1)HELLO WORLD!");
        continue;
      case 2:
      default:
        printf("(2/def)HELLO WORLD!");
        continue;
    }
    printf("(after_switch)HELLO WORLD!");
  }
  return 0;
}

int m2() {
  int value = 0;
  switch (value) {
    int x = 1;
    printf("(out)HELLO WORLD!");
    x = value + 1;
    case 0:
      printf("(0)HELLO WORLD!");
      break;
      int z = 9;
    default:

    case 1: {
      int something = 1;
      something++;
    }
      z = 42;
      break;
    case 2:
    case 3: {
    }
  }
  return 0;
}

int m3() {
  int value = 0;
  switch (value) {
    case 0:
      printf("(0)HELLO WORLD!");
      break;
    case 1: {
      int something = 1;
      something++;
    } break;
      int z = 9;
    case 2:
    case 3: {
    }
  }
  return 0;
}

int m4() {
  int value = 0;
  switch (value) {
    int x = 1;
    printf("(out)HELLO WORLD!");
    x = value + 1;
    case 0:
      printf("(0)HELLO WORLD!");
      break;
      int z = 9;
    default:

    case 1: {
      int something = 1;
      something++;
    }
      z = 42;
      break;
    case 2:
    case 3: {
    }
  }
  return 0;
}

int m5() {
  int value = 0;
  while (value < 10) {
    switch (value) {
      int x = 1;
      printf("(out)HELLO WORLD!");
      x = value + 1;
      continue;
      case 0:
        printf("(0)HELLO WORLD!");
        break;
    }
  }
  return 0;
}

int m6() {
  int value = 0;
  switch (value > 0 ? 1 : 0) {
    case 0:
      printf("(0)HELLO WORLD!");
      break;
    case 1: {
      int something = 1;
      something++;
    } break;
      int z = 9;
    case 2:
    case 3: {
    }
  }
  return 0;
}

int getValue() { return 1; }

int m7() {
  int value = 0;
  switch (getValue()) {
    case 0:
      printf("(0)HELLO WORLD!");
      break;
    case 1: {
      int something = 1;
      something++;
    } break;
      int z = 9;
    case 2:
    case 3: {
    }
  }
  return 0;
}

int m8() {
  int value = 0;
  while (value < 10) {
    switch (getValue() == 0 ? 1 : 2) {
      case 0:
        printf("(0)HELLO WORLD!");
        return 0;
      case 1: {
        int something = 1;
        something++;
        continue;
      } break;
        int z = 9;
      case 2:
      case 3: {
      }
    }
    int a = 0;
  }
  return 0;
}

int m9() {
  int value = 0;
  switch (value) {}
  return 0;
}

int m10() {
  int value = 0;
  switch (value = 7) {}
  return 0;
}

int m11() {
  int value = 0;
  switch (value = (value == 0 ? 7 : 9)) {
    case 0:
      printf("(0)HELLO WORLD!");
  }
  return 0;
}
