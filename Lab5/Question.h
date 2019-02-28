//
//  AdditionQuestion.h
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-27.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic, copy) NSString * question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) int leftValue;
@property (nonatomic) int rightValue;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;
@end

NS_ASSUME_NONNULL_END
