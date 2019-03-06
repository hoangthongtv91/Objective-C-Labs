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
#import "Manager1.h"
#import "Manager2.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager1 *manager1 = [Manager1 new];
        Manager2 *manager2 = [Manager2 new];
        DeliveryService *service = [DeliveryService new];
        
    
        while (TRUE) {
            NSLog(@"\nPlease pick your manager:");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *input = [[NSString alloc] initWithUTF8String:str];
            input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([input isEqualToString:@"manager1"]) {
                restaurantKitchen.delegate = manager1;
            }
            if ([input isEqualToString:@"manager2"]){
                restaurantKitchen.delegate = manager2;
            }
            if ([input isEqualToString:@"no manager"]){
                restaurantKitchen.delegate = nil;
            }
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"\n> ");
            
            char strl[100];
            fgets (strl, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:strl];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            Pizza *pizza = [Pizza new];
            if ([inputString isEqualToString:@"pepperoni"] || [inputString isEqualToString:@"meatlover"]) {
                pizza = [restaurantKitchen makePizzaWithCombination:inputString];
            }else{
                NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
                NSArray *toppingsArray = [commandWords subarrayWithRange:NSMakeRange(1, ([commandWords count] - 1))];
                pizza = [restaurantKitchen makePizzaWithSize:[Pizza sizeFromString:[commandWords objectAtIndex:0]] toppings:toppingsArray];
            }
            NSLog(@"\nHERE YOU GO:\nPizza with size is: %@, and toppings is: %@",[pizza sizeInWord], [pizza toppings]);
            NSLog(@"%@",[service descriptionOfDeliveredPizza:pizza]);
            if ([restaurantKitchen.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [restaurantKitchen.delegate kitchenDidMakePizza:pizza];
            }
            
        }

    }
    return 0;
}

