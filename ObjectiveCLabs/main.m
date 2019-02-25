//
//  main.m
//  ObjectiveCLabs
//
//  Created by Thong Hoang Nguyen on 2019-02-22.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"Hello";
        str = [str stringByAppendingString:@" Thong"];
        NSLog(@"fixed string :%@", str);
    }
    return 0;
}
