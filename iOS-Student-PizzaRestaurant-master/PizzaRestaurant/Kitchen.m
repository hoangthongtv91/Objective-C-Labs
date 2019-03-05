//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    return [[Pizza alloc] initWithSize:size AndToppings:toppings];
}
- (Pizza *)makePizzaWithCombination:(NSString *) combination{
    Pizza *pizza = [Pizza new];
    if ([[combination lowercaseString] isEqualToString:@"pepperoni"]){
        pizza = [Pizza largePepperoni];
    }
    if ([[combination lowercaseString] isEqualToString:@"meatlover"]){
        NSLog(@"Please tell me the size you want: ");
        char str[100];
        fgets (str, 100, stdin);
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        pizza = [Pizza meatLoversWithSize:[Pizza sizeFromString:inputString]];
    }
    return pizza;
}
@end
