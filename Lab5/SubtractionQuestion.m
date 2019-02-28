//
//  SubtractionQuestion.m
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-27.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}
- (void) generateQuestion{
    super.question = [NSString stringWithFormat:@"%d - %d = ?",[super leftValue], [super rightValue]];
    super.answer = [super leftValue] - [super rightValue];
}
@end
