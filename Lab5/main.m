//
//  main.m
//  Lab5
//
//  Created by Thong Hoang Nguyen on 2019-02-27.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DividendQuestion.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [ScoreKeeper new];
        QuestionManager *manager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        score.rightCount = 0;
        score.wrongCount = 0;
        int totaltime = 0;
        NSLog(@"MATHS!\n\n\n");
        while (TRUE) {
            Question *quest = [[NSClassFromString([questionFactory generateRandomQuestion]) alloc] init];
            NSLog(@"%@", quest.question);
            [manager.questions addObject:quest.question];
            NSString *inputString = [InputHandler promptUser];
            if ([inputString isEqualToString:@"quit"]) {
                break;
            }
            NSInteger userAnswer = [inputString integerValue];
            if (userAnswer == quest.answer) {
                NSLog(@"RIGHT!");
                score.rightCount++;
            }else{
                NSLog(@"WRONG!");
                score.wrongCount++;
            }
            [score logTheCurrentResultOut];
            totaltime = totaltime + (int) quest.answerTime;
            NSLog(@"%@",[manager timeOutput:totaltime withNumberOfQuestionsOfArray:manager.questions]);
        }
    }
    return 0;
}
