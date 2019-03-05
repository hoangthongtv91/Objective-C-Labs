//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Thong Hoang Nguyen on 2019-03-03.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype) initWithSize:(PizzaSize) size AndToppings:(NSArray *) toppings{
    if (self == [super init]) {
        _size = size;
        switch (_size) {
            case PizzaSizeSmall:
                _sizeInWord = @"small";
                break;
            case PizzaSizeMedium:
                _sizeInWord = @"medium";
                break;
            case PizzaSizeLarge:
                _sizeInWord = @"large";
                break;
            default:
                _sizeInWord = @"Non valid size";
        }
        _toppings = toppings;
    }
    return self;
}
+ (PizzaSize) sizeFromString: (NSString *) strOrig {
    PizzaSize size;
    NSString *str = strOrig.lowercaseString;
    if ([str isEqualToString:@"small"]) {
        size = PizzaSizeSmall;
    }
    else if ([str isEqualToString:@"medium"]) {
        size = PizzaSizeMedium;
    }
    else if ([str isEqualToString:@"large"]) {
        size = PizzaSizeLarge;
    }
    else {
        size = NO;
    }
    return size;
}
+ (NSArray *) getToppingsFromArray:(NSArray *) array{
    return array;
}
+ (Pizza *)largePepperoni{
    return [[Pizza alloc] initWithSize:PizzaSizeLarge AndToppings:@[@"tomato sauce", @"mozzeralla cheese", @"pepperonni"]];
}
+ (Pizza *)meatLoversWithSize:(PizzaSize)size{
    return [[Pizza alloc] initWithSize:size AndToppings:@[@"tomato sauce", @"mozzeralla", @"pepperonni", @"italian sausage", @"salami"]];
}
@end
