//
//  Manager2.m
//  PizzaRestaurant
//
//  Created by Thong Hoang Nguyen on 2019-03-04.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Manager2.h"

@implementation Manager2
- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryService = [DeliveryService new];
    }
    return self;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}
-(BOOL)kitchen:(Kitchen *)kitchen kitchenshouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}
-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"The pizza was awesome!!");
    [_deliveryService deliverPizza:pizza];
}
@end
