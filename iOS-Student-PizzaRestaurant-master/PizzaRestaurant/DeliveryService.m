//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Thong Hoang Nguyen on 2019-03-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryCar = [DeliveryCar new];
        
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza{
    [_deliveryCar deliverPizza:pizza];
}
- (NSString *) descriptionOfDeliveredPizza:(Pizza *) pizza{
    return [NSString stringWithFormat:@"Pizza being delivered: size: %@, topping: %@)", pizza.sizeInWord, pizza.toppings];
}
@end
