//
//  QuestionFactory.m
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-28.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype) init{
    if (self == [super init]) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DividendQuestion"];
    }
    return self;
}
- (NSString *) generateRandomQuestion{
    unsigned int ran = arc4random_uniform(4);
    return [_questionSubclassNames objectAtIndex:ran];
}
@end
