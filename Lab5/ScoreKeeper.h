//
//  ScoreKeeper.h
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-27.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property (assign) NSInteger rightCount;
@property (assign) NSInteger wrongCount;
- (void) logTheCurrentResultOut;
@end

NS_ASSUME_NONNULL_END
