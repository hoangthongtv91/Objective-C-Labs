//
//  GameController.h
//  Threelow
//
//  Created by Thong Hoang Nguyen on 2019-02-28.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject
- (void) rollWithArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(nonnull NSMutableArray *)heldIndexArray;
- (void) holdWithArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(NSMutableArray *) heldIndexArray;
- (void) removeHeldCollectionWithArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(NSMutableArray *) heldIndexArray;
+ (NSInteger) calculateCurrentPointWithHeldCollection:(NSMutableArray *) heldCollection;
@end

NS_ASSUME_NONNULL_END
