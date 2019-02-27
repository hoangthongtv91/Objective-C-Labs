//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Thong Hoang Nguyen on 2019-02-26.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (void) logTheCurrentResult{
    NSLog(@"Score: %zd right, %zd wrong", _rightCount, _wrongCount);
}
@end
