//
//  main.m
//  Lab10
//
//  Created by Thong Hoang Nguyen on 2019-03-05.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int ran = arc4random_uniform(900) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is %d. Please select your payment method:1: Paypal, 2: Stripe, 3: Amazon", ran);
        char str [100];
        fgets(str, 100, stdin);
        int inputValue = [[[NSString stringWithUTF8String:str] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] intValue];
        NSLog(@"Input was: %d", inputValue);
        PaymentGateway *paymentGateway = [PaymentGateway new];
        switch (inputValue) {
            case 1:
                paymentGateway.paymentDelegate = [PaypalPaymentService new];
                break;
            case 2:
                paymentGateway.paymentDelegate = [StripePaymentService new];
                break;
            case 3:
                paymentGateway.paymentDelegate = [AmazonPaymentService new];
                break;
            default:
                break;
        }
        
        [paymentGateway.paymentDelegate processPaymentAmount:ran];
    }
    return 0;
}
