//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Thong Hoang Nguyen on 2019-03-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"
NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject
- (void) deliverPizza:(Pizza *)pizza;
- (NSString *) descriptionOfDeliveredPizza:(Pizza *) pizza;
@property (nonatomic, strong) DeliveryCar *deliveryCar;
@end

NS_ASSUME_NONNULL_END
