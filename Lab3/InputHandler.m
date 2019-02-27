//
//  InputHandler.m
//  Lab3
//
//  Created by Thong Hoang Nguyen on 2019-02-26.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+ (NSString *) promptUser{
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    return [[NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
