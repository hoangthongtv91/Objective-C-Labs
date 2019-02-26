//
//  Functions.m
//  Lab1
//
//  Created by Thong Hoang Nguyen on 2019-02-25.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "Functions.h"

@implementation Functions
- (NSString *) promptUser{
        NSLog(@"\nChoose one of these manipulating options: \n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It");
    char inputChoice[10];
    fgets(inputChoice, 10, stdin);
    NSString *choice = [NSString stringWithUTF8String:inputChoice];
    return choice;
    }
- (void) uppercase:(NSString *) str{
    str = [str uppercaseString];
}
- (void) lowercase:(NSString *) str{
    str = [str lowercaseString];
}
- (void) numberize:(NSString *) str{
    
}
- (void) canadianize:(NSString *) str{
    
}
- (void) respond:(NSString *) str{
    
}
- (void) de_space_it:(NSString *) str{
    
}

@end
