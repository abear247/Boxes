//
//  main.m
//  Boxes
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float height = 10;
        float width = 5;
        float length = 5;
        
        Box *box =  [[Box alloc] initWithHeight:height width:width length:length];
        Box *box1 = [[Box alloc] initWithHeight:height*3 width:width*3 length:length*3];
        Box *box2 = [[Box alloc] initWithHeight:height/2 width:width/2 length:length/2];
        Box *box3 = [[Box alloc] initWithHeight:height width:width length:length];

        float volume = [box volume];
        NSLog(@"Volume is: %f", volume);
        
        int insideBoxGreater = [box boxesInBox:box1];
        int insideBoxLesser = [box boxesInBox:box2];
        int insideBoxEqual = [box boxesInBox:box3];
        
        NSLog(@"Times larger box fits inside: %d", insideBoxGreater);
        NSLog(@"Times smaller box fits inside: %d", insideBoxLesser);
        NSLog(@"Times equal box fits inside: %d", insideBoxEqual);
    }
    return 0;
}
