//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Thong Hoang Nguyen on 2019-03-03.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PizzaSize){
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge
};
@interface Pizza : NSObject
@property (nonatomic) NSString *sizeInWord;
@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray *toppings;
+ (PizzaSize) sizeFromString: (NSString *) strOrig;
+ (NSArray *) getToppingsFromArray:(NSArray *) array;
- (instancetype) initWithSize:(PizzaSize) size AndToppings:(NSArray *) toppings;
+ (Pizza *)largePepperoni;
+ (Pizza *)meatLoversWithSize:(PizzaSize)size;
@end

NS_ASSUME_NONNULL_END
