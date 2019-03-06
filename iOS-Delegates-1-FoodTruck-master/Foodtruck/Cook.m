//
//  Cook.m
//  Foodtruck
//
//  Created by Thong Hoang Nguyen on 2019-03-05.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    if ([food isEqualToString:@"bao"]) {
        return 5.5;
    }else if ([food isEqualToString:@"shortbread"]){
        return 10.99;
    }else{
        return 15;
    }
}
@end
