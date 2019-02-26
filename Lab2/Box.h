//
//  Box.h
//  Lab2
//
//  Created by Thong Hoang Nguyen on 2019-02-25.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
@property (assign) float height;
@property (assign) float width;
@property (assign) float length;

- (instancetype) initWithHeight:(float) height AndWidth:(float) width AndAlsoLength:(float) length;
- (float) calculateVolume;
- (float) timesToFit:(Box *) box1 And:(Box *) box2;
@end

NS_ASSUME_NONNULL_END
