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
        
        Functions *func = [[Functions alloc] init];
        
        NSString *choice = [func promptUser];
        while (1){
            if ([choice isEqualToString:@"1"]){
                [func uppercase:inputString];
            }
            break;
        }
        
    }
    return 0;
}
