//
//  SquareElement.m
//  Transition
//
//  Created by chrisfnxu on 7/14/15.
//  Copyright (c) 2015 chrisfnxu. All rights reserved.
//

#import "SquareElement.h"

@implementation SquareElement

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // add ur code
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ctx);
    CGContextSetLineWidth(ctx, self.lineWidth);
    CGContextSetStrokeColorWithColor(ctx, self.color.CGColor);
    CGContextAddRect(ctx, rect);
    CGContextStrokePath(ctx);
}

@end
