//
//  Box.m
//  Boxes
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype)initWithHeight:(float)height width:(float)width length:(float)length{
    self = [super init];
    if (self){
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

-(float)volume{
    return self.height*self.width*self.height;
}

-(int)boxesInBox:(Box *)box{
    int selfVolume = [self volume];
    int otherVolume = [box volume];
    int timesFit = 0;
    if (selfVolume/otherVolume > 1)
        timesFit = selfVolume/otherVolume;
    if (selfVolume/otherVolume == 1)
        ++timesFit;
    
    return timesFit;
}

@end
