//
//  ViewController.m
//  Transition
//
//  Created by chrisfnxu on 7/14/15.
//  Copyright (c) 2015 chrisfnxu. All rights reserved.
//

#import "ViewController.h"
#import "CircleElement.h"
#import "SquareElement.h"
#import "TriangleElement.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Element *circleElem = [[CircleElement alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    circleElem.color = [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
    circleElem.lineWidth = 2.0f;
    [self.view addSubview:circleElem];
    
    Element *squareElem = [[SquareElement alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    squareElem.color = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    squareElem.lineWidth = 2.0f;
    [self.view addSubview:squareElem];
    
    Element *triangleElem = [[TriangleElement alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    triangleElem.color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
    triangleElem.lineWidth = 2.0f;
    [self.view addSubview:triangleElem];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
