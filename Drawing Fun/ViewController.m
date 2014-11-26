//
//  ViewController.m
//  Drawing Fun
//
//  Created by Taylor Wright-Sanson on 11/21/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "ViewController.h"

//const static CGFloat kFullCircularRotation = M_PI * 2.0f;

@interface ViewController ()

@property UIDynamicAnimator *animator;
@property UIGravityBehavior *gravity;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100.0, 500.0)];
    [path addLineToPoint:CGPointMake(150.0, 500.0)];
    [path addLineToPoint:CGPointMake(155.0, 450.0)];
    [path addLineToPoint:CGPointMake(155.0, 400.0)];
    [path addLineToPoint:CGPointMake(160.0, 400.0)];
    [path addLineToPoint:CGPointMake(160.0, 370.0)]; // point of building
    [path addLineToPoint:CGPointMake(160.0, 400.0)];
    [path addLineToPoint:CGPointMake(165.0, 400.0)];
    [path addLineToPoint:CGPointMake(165.0, 450.0)];
    [path addLineToPoint:CGPointMake(170.0, 500.0)]; // bottom of building

    [path addLineToPoint:CGPointMake(225.0, 500.0)];
    [path addLineToPoint:CGPointMake(225.0, 300.0)]; // up for new building

    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = path.CGPath;
    shapeLayer.strokeColor = [UIColor greenColor].CGColor;
    shapeLayer.lineWidth = 3.0;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;

    CABasicAnimation *drawAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    drawAnimation.duration = 1.0;
    drawAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    drawAnimation.toValue = [NSNumber numberWithFloat:1.0];
    drawAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    drawAnimation.removedOnCompletion = YES;

    // ************************************************************
    // ***************** Drawing circle ***************************
    // ************************************************************

    CGRect circleRect = CGRectMake(107.5, 140.0, 20, 20);
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithRoundedRect:circleRect cornerRadius:CGRectGetWidth(circleRect) / 2.0];

    CAShapeLayer *circleLayer = [CAShapeLayer layer];
    circleLayer.path = circlePath.CGPath;
    circleLayer.frame = CGPathGetBoundingBox(circleLayer.path);
    circleLayer.fillColor = [UIColor clearColor].CGColor;
    circleLayer.strokeColor = [UIColor greenColor].CGColor;
    circleLayer.lineWidth = 3.0;
    UIView *circle = [[UIView alloc] initWithFrame:circleLayer.frame];
    circle.backgroundColor = [UIColor blueColor];
    [self.view addSubview:circle];


    CABasicAnimation *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    rotateAnimation.duration = 1.0;
    rotateAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    rotateAnimation.toValue = [NSNumber numberWithFloat:1.0];
    rotateAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    rotateAnimation.removedOnCompletion = YES;

    drawAnimation.repeatCount = 1;

    [self.view.layer addSublayer:shapeLayer];
    [self.view.layer addSublayer:circleLayer];
    [shapeLayer addAnimation:drawAnimation forKey:@"animateStroke"];
    [circleLayer addAnimation:rotateAnimation forKey:@"animateRotation"];

    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[circle]];
    //[self.animator addBehavior:self.gravity];

    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapMe:)];
    [self.view addGestureRecognizer:tapGesture];
}

- (void)tapMe:(id)sender
{
    [self.animator addBehavior:self.gravity];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
