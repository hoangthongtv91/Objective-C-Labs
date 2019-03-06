//
//  PaymentGateway.m
//  Lab10
//
//  Created by Thong Hoang Nguyen on 2019-03-05.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount:(NSInteger) amount{
    if ([_paymentDelegate canProcessPayment]) {
        [_paymentDelegate processPaymentAmount:amount];
    }else{
        NSLog(@"Sorry the process was not successful");
    }
    
}
@end
