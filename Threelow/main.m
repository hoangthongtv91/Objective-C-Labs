//
//  main.m
//  Threelow
//
//  Created by Thong Hoang Nguyen on 2019-02-28.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice = [Dice new];
        GameController *gameController = [GameController new];
        NSMutableArray *myArray = [NSMutableArray new];
        NSMutableArray *heldCollection = [NSMutableArray new];
        NSMutableArray *heldIndexArray = [NSMutableArray new];
        while (true){
            NSLog(@"What do you want to do ?");
            NSString *input = [Dice promptUser];
            if ([input isEqualToString:@"roll"]){
                [gameController rollWithArray:myArray AndHeldCollection:heldCollection AndHeldIndexArray:heldIndexArray];
                }
            if ([input isEqualToString:@"hold"]) {
                [gameController holdWithArray:myArray AndHeldCollection:heldCollection AndHeldIndexArray:heldIndexArray];
            }
            if ([input isEqualToString:@"reset"]){
                [gameController removeHeldCollection:heldCollection AndHeldIndexArray:heldIndexArray];
            }
            [dice printArray:myArray AndHeldCollection:heldCollection AndHeldIndexArray:heldIndexArray];
        }
        
    }
    return 0;
}
