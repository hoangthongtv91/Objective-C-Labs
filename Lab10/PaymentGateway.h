//
//  PaymentGateway.h
//  Lab10
//
//  Created by Thong Hoang Nguyen on 2019-03-05.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PaymentDelegate <NSObject>
- (void) processPaymentAmount:(NSInteger) amount;
@end
@interface PaymentGateway : NSObject
@property (nonatomic) id<PaymentDelegate> paymentDelegate;
@end

NS_ASSUME_NONNULL_END
