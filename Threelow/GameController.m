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
    if ([heldIndexArray count] != 0) {
        for (int i = 0; i < [heldIndexArray count]; i++) {
            [myArray replaceObjectAtIndex:[[heldIndexArray objectAtIndex:i] integerValue] withObject:[NSString stringWithFormat:@"[%@]",[heldCollection objectAtIndex:i]]];
        }
    }
}
- (void) holdWithArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(nonnull NSMutableArray *)heldIndexArray{
    NSLog(@"Input the index: ");
    NSString *input = [[NSString alloc] initWithFormat:@"%@",[Dice promptUser]];
    if ([heldIndexArray containsObject:input]){
        [heldIndexArray removeObject:input];
        [heldCollection removeObject:[myArray objectAtIndex:[input integerValue]]];
    }else{
        [heldIndexArray addObject:input];
        [heldCollection addObject:[myArray objectAtIndex:[input integerValue]]];
    }
    
}

- (void) removeHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(NSMutableArray *) heldIndexArray{
    [heldIndexArray removeAllObjects];
    [heldCollection removeAllObjects];
}
@end
