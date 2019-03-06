//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Thong Hoang Nguyen on 2019-03-05.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
- (void) processPaymentAmount:(NSInteger)amount{
    NSLog(@"Amazon processed amount %ld", amount);
}
- (BOOL) canProcessPayment{
    int x = arc4random_uniform(2);
    if (x == 0) {
        return NO;
    }else{
        return YES;
    }
}
@end
