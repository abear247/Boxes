//
//  Box.h
//  Boxes
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;

-(instancetype)initWithHeight:(float)height width:(float)width length:(float)length;
-(float)volume;
-(int)boxesInBox: (Box*)box;

@end
