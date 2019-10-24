/*
 * Copyright (c) 2014 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import <Foundation/NSObject.h>

@interface B : NSObject

- (BOOL)isC:(Class)aClass;

@end

@implementation B : NSObject

+ (void)b_m {
}

- (BOOL)isC:(Class)aClass {
  return TRUE;
}

@end

@interface C : NSObject

- (void)test;

+ (void)test_class;

@end

@interface A : C

@end

@implementation A

- (void)test {
}

- (void)call_test {
  [self test];
}

+ (void)test_class {
}

+ (void)call_test_class {
  [self test_class];
}

+ (void)call_alloc_class {
  [self alloc];
}

- (void)call_alloc_instance {
  [[self class] alloc];
}

- (void)call_class_instance {
  [[self class] test_class];
}

- (void)call_class_instance_with_class_name {
  [A test_class];
}

- (void)t {
  B* b = [B new];
  [[b class] b_m];
}

- (BOOL)use_class_in_other_ways:(B*)object {
  return [object isC:[self class]];
}

+ (void)calling_super {
  [super test_class];
}

- (void)init {
  [super init];
}

- (NSString*)loggerName {
  return NSStringFromClass([self class]);
}

+ (int)used_in_binary_op:(Class)c {
  if (self != c) {
    return 1;
  } else
    return 0;
}
@end
