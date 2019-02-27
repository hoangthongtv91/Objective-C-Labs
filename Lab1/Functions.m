//
//  Functions.m
//  Lab1
//
//  Created by Thong Hoang Nguyen on 2019-02-25.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "Functions.h"

@implementation Functions
- (NSString *) promptUser{
    char inputChoice[10];
    NSLog(@"\nChoose one of these manipulating options ('q' to quit): \n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word count\n8. Punctual removal");
    fgets(inputChoice, 10, stdin);
    return [[NSString stringWithUTF8String:inputChoice] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
- (void) uppercase:(NSString *) str{
    str = [str uppercaseString];
    NSLog(@"%@", str);
}
- (void) lowercase:(NSString *) str{
    str = [str lowercaseString];
    NSLog(@"%@", str);
}
- (void) numberize:(NSString *) str{
    NSLog(@"%li", (long) [str integerValue]);
}
- (void) canadianize:(NSString *) str{
    NSLog(@"%@", [str stringByAppendingString:@", eh?"]);
}
- (void) respond:(NSString *) str{
    NSString *lastLetter = [str substringFromIndex:([str length]-2)];
    if ([lastLetter isEqualToString:@"?\n"]) {
        NSLog(@"I don't know man");
    }else if ([lastLetter isEqualToString:@"!\n"]){
        NSLog(@"Calm down, girl!");
    }
}
- (void) de_space_it:(NSString *) str{
    NSLog(@"%@", [str stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
}
- (void) countWords:(NSString *) str{
        NSArray *words = [str componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        words = [words filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]];
        NSLog(@"%tu", [words count]);
}
- (void) removePunctual:(NSString *) str{
    NSMutableArray *array = [NSMutableArray new];
    NSArray *punc = @[@".", @"?", @"!", @",", @";", @":", @"-", @"\"", @"\'"];
    for (int i = 0; i < [str length]; i++){
        NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
        [array addObject:ch];
    }
    for (int i = 0; i < [array count]; i++){
        if ([punc containsObject:[array objectAtIndex:i]]){
            [array removeObjectAtIndex:i];
        }
    }
    NSMutableString *result = [NSMutableString new];
    int x = 0;
    while (x < ([array count])){
        [result appendString:[array objectAtIndex:x]];
        x++;
    }
    NSLog(@"%@", result);
}

@end
