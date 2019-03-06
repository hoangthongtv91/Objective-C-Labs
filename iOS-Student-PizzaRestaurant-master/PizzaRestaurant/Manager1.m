//
//  Manager1.m
//  PizzaRestaurant
//
//  Created by Thong Hoang Nguyen on 2019-03-04.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Manager1.h"

@implementation Manager1
-(BOOL) kitchen:(Kitchen *)kitchen kitchenshouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    BOOL FLAG = YES;
    if ([toppings containsObject:@"anchovies"]) {
        FLAG = NO;
    }
    return FLAG;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}
@end
