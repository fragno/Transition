//
//  TriangleElement.m
//  Transition
//
//  Created by chrisfnxu on 7/14/15.
//  Copyright (c) 2015 chrisfnxu. All rights reserved.
//

#import "TriangleElement.h"

@implementation TriangleElement

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
    CGPoint point1 = CGPointMake(bounds.origin.x + bounds.size.width/2.0, bounds.origin.y);
    CGPoint point2 = CGPointMake(bounds.origin.x, bounds.origin.y + bounds.size.height);
    CGPoint point3 = CGPointMake(bounds.origin.x + bounds.size.width, bounds.origin.y + bounds.size.height);
    CGPoint lines[] = {
        point1,
        point2,
        point3,
        point1,
    };
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ctx);
    CGContextSetLineWidth(ctx, self.lineWidth);
    CGContextSetStrokeColorWithColor(ctx, self.color.CGColor);
    CGContextAddLines(ctx, lines, 4);
    CGContextStrokePath(ctx);
}

@end
