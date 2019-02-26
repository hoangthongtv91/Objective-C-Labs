//
//  Box.m
//  Lab2
//
//  Created by Thong Hoang Nguyen on 2019-02-25.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import "Box.h"

@implementation Box
- (instancetype) initWithHeight:(float) height AndWidth:(float) width AndAlsoLength:(float) length{
    self = [super init];
    if (self){
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}
- (float) calculateVolume{
    return (self.height * self.width * self.length);
}
- (float) timesToFit:(Box *) box1 And:(Box *) box2{
    float volume1 = [box1 calculateVolume];
    float volume2 = [box2 calculateVolume];
    if (volume1 > volume2){
        return (volume1 / volume2);
    }else{
        return (volume2 / volume1);
    }
}
@end
