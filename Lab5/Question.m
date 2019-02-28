//
//  AdditionQuestion.m
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-27.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype) init{
    if (self == [super init]) {
        _startTime = [NSDate date];
        _leftValue = arc4random_uniform(100) + 10;
        _rightValue = arc4random_uniform(100) + 10;
    }
    return self;
}
- (NSTimeInterval) answerTime{
    return (long) [_endTime timeIntervalSinceDate:_startTime];
}
- (void) generateQuestion{
    
}
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}
@end
