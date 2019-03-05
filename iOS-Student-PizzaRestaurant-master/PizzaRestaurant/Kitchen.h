//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
//@protocol KitchenDelegate
//@required
//- (BOOL)kitchen:(Kitchen *) kitchenshouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings;
//- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *) kitchen;
//@optional
//- (void)kitchenDidMakePizza:(Pizza *)pizza;
//@end
@interface Kitchen : NSObject
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
- (Pizza *)makePizzaWithCombination:(NSString *) combination;
//@property (nonatomic) id<KitchenDelegate> delegate;
@end
