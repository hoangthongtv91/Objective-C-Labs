//
//  main.m
//  Lab13
//
//  Created by Thong Hoang Nguyen on 2019-02-22.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"  Kale   Chips  hello  Uwer   oai";
        NSLog(@"Fixed string is :%@", [str stringByPigLatinization]);
    }
    return 0;
}
