//
//  QuestionFactory.h
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-28.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
@property (nonatomic, strong) NSArray *questionSubclassNames;
- (NSString *) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
