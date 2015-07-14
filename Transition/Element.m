//
//  Element.m
//  Transition
//
//  Created by chrisfnxu on 7/14/15.
//  Copyright (c) 2015 chrisfnxu. All rights reserved.
//

#import "Element.h"

@interface Element()

@end


@implementation Element

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self parameterInitialize];
    }
    return self;
}

- (void)parameterInitialize
{
    self.lineWidth = 2.0f;
    self.color = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.0];
}

@end
