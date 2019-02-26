//
//  Functions.h
//  Lab1
//
//  Created by Thong Hoang Nguyen on 2019-02-25.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Functions : NSObject
- (NSString *) promptUser;
- (void) uppercase:(NSString *) str;
- (void) lowercase:(NSString *) str;
- (void) numberize:(NSString *) str;
- (void) canadianize:(NSString *) str;
- (void) respond:(NSString *) str;
- (void) de_space_it:(NSString *) str;
- (void) countWords:(NSString *) str;
- (void) removePunctual:(NSString *) str;
@end

NS_ASSUME_NONNULL_END
