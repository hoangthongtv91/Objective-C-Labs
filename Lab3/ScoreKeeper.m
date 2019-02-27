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
    float precentage = (float) (100 * _rightCount)/(_rightCount + _wrongCount);
//    NSLog(@"That are %.1f percent!", precentage);
    NSLog(@"Score: %zd right, %zd wrong --- %.2f%%", _rightCount, _wrongCount, precentage);
}
@end
