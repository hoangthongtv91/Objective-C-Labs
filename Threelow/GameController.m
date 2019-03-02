//
//  GameController.m
//  Threelow
//
//  Created by Thong Hoang Nguyen on 2019-02-28.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "GameController.h"

@implementation GameController
- (void) rollWithArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(nonnull NSMutableArray *)heldIndexArray{
    Dice *dice = [Dice new];
    [myArray removeAllObjects];
    [myArray addObject:[dice randomizeDie]];
    [myArray addObject:[dice randomizeDie]];
    [myArray addObject:[dice randomizeDie]];
    [myArray addObject:[dice randomizeDie]];
    [myArray addObject:[dice randomizeDie]];
    for (int i = 0; i < [heldIndexArray count]; i++) {
        [myArray replaceObjectAtIndex:[[heldIndexArray objectAtIndex:i] integerValue] withObject:[NSString stringWithFormat:@"[%@]",[heldCollection objectAtIndex:i]]];
    }
    
}
- (void) holdWithArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(nonnull NSMutableArray *)heldIndexArray{
    NSLog(@"Input the index: ");
    NSString *input = [[NSString alloc] initWithFormat:@"%@",[Dice promptUser]];
    if ([heldIndexArray containsObject:input]){
        [myArray replaceObjectAtIndex:[input integerValue] withObject:[heldCollection objectAtIndex:[heldIndexArray indexOfObject:input]]];
        [heldCollection removeObjectAtIndex:[heldIndexArray indexOfObject:input]];
        [heldIndexArray removeObject:input];
    }else{
        [heldIndexArray addObject:input];
        [heldCollection addObject:[myArray objectAtIndex:[input integerValue]]];
        [myArray replaceObjectAtIndex:[input integerValue] withObject:[NSString stringWithFormat:@"[%@]",[heldCollection objectAtIndex:[heldIndexArray indexOfObject:input]]]];
    }
}
- (void) removeHeldCollectionWithArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(NSMutableArray *) heldIndexArray{
    for (int i = 0; i < [heldIndexArray count]; i++) {
        [myArray replaceObjectAtIndex:[[heldIndexArray objectAtIndex:i] integerValue] withObject:[heldCollection objectAtIndex:i]];
    }
    [heldIndexArray removeAllObjects];
    [heldCollection removeAllObjects];
}
+ (NSInteger) calculateCurrentPointWithHeldCollection:(NSMutableArray *) heldCollection{
    NSInteger point = 0;
    for (int i = 0; i < [heldCollection count]; i++){
        NSString *str = [heldCollection objectAtIndex:i];
        if ([str isEqualToString:@"⚀"]) {
            point += 1;
        }
        if ([str isEqualToString:@"⚁"]) {
            point += 2;
        }
        if ([str isEqualToString:@"⚂"]) {
            point += 0;
        }
        if ([str isEqualToString:@"⚃"]) {
            point += 4;
        }
        if ([str isEqualToString:@"⚄"]) {
            point += 5;
        }
        if ([str isEqualToString:@"⚅"]) {
            point += 6;
        }
    }
    return point;
}
@end
