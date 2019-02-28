//
//  QuestionManager.m
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-27.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype) init{
    if (self == [super init]) {
        _questions = [NSMutableArray new];
    }
    return self;
}
- (NSString *) timeOutput:(int) totalTime withNumberOfQuestionsOfArray: (NSMutableArray*) array {
    float averageTime = (float) totalTime / [array count];
    NSString *str = [NSString stringWithFormat: @"total time: %ds, average time: %.2fs", totalTime, averageTime];
    return str;
}
@end
