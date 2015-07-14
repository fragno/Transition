//
//  CircleElement.m
//  Transition
//
//  Created by chrisfnxu on 7/14/15.
//  Copyright (c) 2015 chrisfnxu. All rights reserved.
//

#import "CircleElement.h"

@implementation CircleElement

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // add ur code
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds= [self bounds];
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    CGFloat radius = bounds.size.width / 2.0 - self.lineWidth / 2.0;
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ctx);
    CGContextSetLineWidth(ctx, self.lineWidth);
    CGContextSetStrokeColorWithColor(ctx, self.color.CGColor);
    CGContextAddArc(ctx, center.x, center.y, radius, 0.0, M_PI * 2, YES);
    CGContextStrokePath(ctx);
}

@end
