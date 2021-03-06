//
//  main.m
//  Lab3
//
//  Created by Thong Hoang Nguyen on 2019-02-26.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [ScoreKeeper new];
        score.rightCount = 0;
        score.wrongCount = 0;
        NSLog(@"MATHS!");
        while (TRUE) {
            Question *quest = [[Question alloc] init];
            NSLog(@"%@", quest.question);
            NSString *inputString = [InputHandler promptUser];
            if ([inputString isEqualToString:@"quit"]) {
                break;
            }
            NSInteger answer = [inputString integerValue];
            if (answer == quest.answer) {
                NSLog(@"RIGHT!");
                score.rightCount++;
            }else{
                NSLog(@"WRONG!");
                score.wrongCount++;
            }
            [score logTheCurrentResultOut];
            
        }
    }
    return 0;
}
