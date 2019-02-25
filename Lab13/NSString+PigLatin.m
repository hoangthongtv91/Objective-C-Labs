//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Thong Hoang Nguyen on 2019-02-24.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
- (NSString *) stringByPigLatinization {
    NSArray *array = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    array = [array filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]];
    NSMutableString *result = [NSMutableString new];
    
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl", @"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"];
    NSArray *vowels = @[@"U", @"E", @"O", @"A", @"I", @"u", @"e", @"o", @"a", @"i"];
    for (int i = 0; i < [array count]; i++){
        NSString *word = [array objectAtIndex:i];
        if ([clusters containsObject:[word substringToIndex:2]]) {
            word = [[[[[word substringWithRange:NSMakeRange(2, 1)] uppercaseString] stringByAppendingString:[word substringFromIndex:3]] stringByAppendingString:[[word substringWithRange:NSMakeRange(0, 2)] lowercaseString]] stringByAppendingString:@"ay"];
            [result appendString:[word stringByAppendingString:@" "]];
        } else {
            if (![vowels containsObject:[word substringToIndex:1]]) {
                word = [[[[[word substringWithRange:NSMakeRange(1, 1)] uppercaseString] stringByAppendingString:[word substringFromIndex:2]] stringByAppendingString:[[word substringWithRange:NSMakeRange(0, 1)] lowercaseString]] stringByAppendingString:@"ay"];
                [result appendString:[word stringByAppendingString:@" "]];
            }else{
                [result appendString:[word stringByAppendingString:@" "]];
            }
        }
    }
    return result;
}
    
@end
