//
//  main.m
//  Lab2
//
//  Created by Thong Hoang Nguyen on 2019-02-25.
//  Copyright © 2019 Thong Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight:2 AndWidth:10 AndAlsoLength:3];
        Box *box2 = [[Box alloc] initWithHeight:5 AndWidth:10 AndAlsoLength:20];
        NSLog(@"The volume1 is: %.2f", [box1 calculateVolume]);
        NSLog(@"The volume2 is: %.2f", [box2 calculateVolume]);
        NSLog(@"The difference is : %.2f", [box1 timesToFit:box1 And:box2]);
    }
    return 0;
}
