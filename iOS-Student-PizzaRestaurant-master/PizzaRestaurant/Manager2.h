//
//  Manager2.h
//  PizzaRestaurant
//
//  Created by Thong Hoang Nguyen on 2019-03-04.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"
NS_ASSUME_NONNULL_BEGIN
@interface Manager2 : NSObject<KitchenDelegate>
@property (nonatomic, strong) DeliveryService *deliveryService;
@end

NS_ASSUME_NONNULL_END
