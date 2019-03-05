//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"\nPlease pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            NSLog(@"\n> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            if ([inputString isEqualToString:@"pepperoni"] || [inputString isEqualToString:@"meatlover"]) {
                Pizza *pizza = [restaurantKitchen makePizzaWithCombination:inputString];
                NSLog(@"\nHERE YOU GO:\nPizza with size is: %@, and toppings is: %@",[pizza sizeInWord], [pizza toppings]);
            }else{
                NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
                NSArray *toppingsArray = [commandWords subarrayWithRange:NSMakeRange(1, ([commandWords count] - 1))];
                Pizza *pizza = [restaurantKitchen makePizzaWithSize:[Pizza sizeFromString:[commandWords objectAtIndex:0]] toppings:toppingsArray];
                NSLog(@"\nHERE YOU GO:\nPizza with size is: %@, and toppings is: %@",[pizza sizeInWord], [pizza toppings]);
            }
            
        }

    }
    return 0;
}

