//
//  QuestionManager.h
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-27.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property (strong) NSMutableArray *questions;
- (NSString *) timeOutput:(int) totalTime withNumberOfQuestionsOfArray: (NSMutableArray*) array;
@end

NS_ASSUME_NONNULL_END
