//
//  main.m
//  Lab1
//
//  Created by Thong Hoang Nguyen on 2019-02-25.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Functions.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        char inputChars[255];
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is %s\n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
        Functions *func = [Functions new];
//        BOOL FLAG = NO;
        NSString *choice = @"0";
        while (![choice isEqualToString:@"q"]){
            if ([choice isEqualToString:@"1"]){
                [func uppercase:inputString];
            }else if ([choice isEqualToString:@"2"]){
                [func lowercase:inputString];
            }else if ([choice isEqualToString:@"3"]){
                [func numberize:inputString];
            }else if ([choice isEqualToString:@"4"]){
                [func canadianize:inputString];
            }else if ([choice isEqualToString:@"5"]){
                [func respond:inputString];
            }else if ([choice isEqualToString:@"6"]){
                [func de_space_it:inputString];
            }else if ([choice isEqualToString:@"7"]){
                [func countWords:inputString];
            }else if ([choice isEqualToString:@"8"]){
                [func removePunctual:inputString];
            }
            choice = [func promptUser];
            NSLog(@"-----------------------------------------");
        }
    return 0;
    }
}
