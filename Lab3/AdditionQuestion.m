//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Thong Hoang Nguyen on 2019-02-26.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype) init{
    if (self == [super init]) {
        int random1 = arc4random_uniform(100) + 10;
        NSString *operand1 = [[NSString alloc] initWithFormat:@"%d",random1];
        int random2 = arc4random_uniform(100) + 10;
        NSString *operand2 = [[NSString alloc] initWithFormat:@"%d",random2];
        _question = [NSString stringWithFormat:@"%@ %s %@ %s", operand1, "+", operand2, "= ?"];
        
        _answer = random1 + random2;
    }
    return self;
}
@end
