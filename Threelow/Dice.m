//
//  Dice.m
//  Threelow
//
//  Created by Thong Hoang Nguyen on 2019-02-28.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "Dice.h"

@implementation Dice
- (NSString *) randomizeDie{
    NSArray *array = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    return [array objectAtIndex:arc4random_uniform(6)];
}
+ (NSString *) promptUser{
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    return [[NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
- (void) printArray:(NSMutableArray *) myArray AndHeldCollection:(NSMutableArray *) heldCollection AndHeldIndexArray:(NSMutableArray *) heldIndexArray{
    for (int i = 0; i < [myArray count]; i++) {
        if ([heldIndexArray containsObject:[NSString stringWithFormat:@"%d",i]]){
            [myArray replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"[%@]",[heldCollection objectAtIndex:[heldIndexArray indexOfObject:[NSString stringWithFormat:@"%d",i]]]]];
        }
    }
    NSLog(@"\n%@ %@ %@ %@ %@",[myArray objectAtIndex:0], [myArray objectAtIndex:1], [myArray objectAtIndex:2], [myArray objectAtIndex:3], [myArray objectAtIndex:4]);
}
@end
