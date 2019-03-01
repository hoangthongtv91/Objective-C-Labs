//
//  Dice.h
//  Threelow
//
//  Created by Thong Hoang Nguyen on 2019-02-28.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
- (NSString *) randomizeDie;
+ (NSString *) promptUser;
- (void) printArray:(NSMutableArray *) array AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(NSMutableArray *) heldIndexArray;
@end

NS_ASSUME_NONNULL_END
