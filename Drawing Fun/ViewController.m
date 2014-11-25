//
//  ViewController.m
//  Drawing Fun
//
//  Created by Taylor Wright-Sanson on 11/21/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "ViewController.h"

const static CGFloat kFullCircularRotation = M_PI * 2.0f;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // ***********************************************************
    // ************ Code from Paint Code for Drawing Snoo *******
    // ***********************************************************
    /*
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(64, 33, 120, 61)];
    [UIColor.blackColor setStroke];
    ovalPath.lineWidth = 1.5;
    [ovalPath stroke];


    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(68, 51)];
    [bezierPath addCurveToPoint: CGPointMake(68, 31) controlPoint1: CGPointMake(68, 51) controlPoint2: CGPointMake(60, 37)];
    [bezierPath addCurveToPoint: CGPointMake(87, 38) controlPoint1: CGPointMake(76, 25) controlPoint2: CGPointMake(87, 38)];
    [UIColor.blackColor setStroke];
    bezierPath.lineWidth = 1.5;
    [bezierPath stroke];


    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(169, 43)];
    [bezier2Path addCurveToPoint: CGPointMake(189, 38) controlPoint1: CGPointMake(169, 43) controlPoint2: CGPointMake(183, 28)];
    [bezier2Path addCurveToPoint: CGPointMake(184, 61) controlPoint1: CGPointMake(195, 48) controlPoint2: CGPointMake(184, 61)];
    [UIColor.blackColor setStroke];
    bezier2Path.lineWidth = 1.5;
    [bezier2Path stroke];


    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
    [bezier3Path moveToPoint: CGPointMake(124, 33)];
    [bezier3Path addLineToPoint: CGPointMake(132, 0)];
    [bezier3Path addLineToPoint: CGPointMake(161, 8)];
    [UIColor.blackColor setStroke];
    bezier3Path.lineWidth = 1.5;
    [bezier3Path stroke];


    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(159, 2, 17, 17)];
    [UIColor.blackColor setStroke];
    oval2Path.lineWidth = 1.5;
    [oval2Path stroke];


    //// Oval 3 Drawing
    UIBezierPath* oval3Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(92.5, 50.5, 17, 17)];
    [UIColor.blackColor setStroke];
    oval3Path.lineWidth = 1;
    [oval3Path stroke];


    //// Oval 4 Drawing
    UIBezierPath* oval4Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(142.5, 50.5, 17, 17)];
    [UIColor.blackColor setStroke];
    oval4Path.lineWidth = 1;
    [oval4Path stroke];


    //// Bezier 4 Drawing
    UIBezierPath* bezier4Path = UIBezierPath.bezierPath;
    [bezier4Path moveToPoint: CGPointMake(101.5, 76.5)];
    [bezier4Path addCurveToPoint: CGPointMake(129.5, 81.5) controlPoint1: CGPointMake(101.5, 76.5) controlPoint2: CGPointMake(120.5, 81.5)];
    [bezier4Path addCurveToPoint: CGPointMake(152.5, 76.5) controlPoint1: CGPointMake(138.5, 81.5) controlPoint2: CGPointMake(152.5, 76.5)];
    [UIColor.blackColor setStroke];
    bezier4Path.lineWidth = 1;
    [bezier4Path stroke];

    //[self.view addSubview:bez];

    CAShapeLayer *shapeView = [[CAShapeLayer alloc] init];
    [shapeView setPath:bezierPath.CGPath];
    [self.view.layer addSublayer:shapeView];

    CAShapeLayer *ovalView = [[CAShapeLayer alloc] init];
    [ovalView setPath:ovalPath.CGPath];
    [self.view.layer addSublayer:ovalView];

    CAShapeLayer *earTwo = [[CAShapeLayer alloc] init];
    [earTwo setPath:bezier2Path.CGPath];
    [self.view.layer addSublayer:earTwo];

    CAShapeLayer *shapeThree = [[CAShapeLayer alloc] init];
    [shapeThree setPath:bezier3Path.CGPath];
    [self.view.layer addSublayer:shapeThree];

    CAShapeLayer *ovalTwo = [[CAShapeLayer alloc] init];
    [ovalTwo setPath:oval2Path.CGPath];
    [self.view.layer addSublayer:ovalTwo];

    CAShapeLayer *ovalThree = [[CAShapeLayer alloc] init];
    [ovalThree setPath:oval3Path.CGPath];
    [self.view.layer addSublayer:ovalThree];

    CAShapeLayer *ovalFour = [[CAShapeLayer alloc] init];
    [ovalFour setPath:oval4Path.CGPath];
    [self.view.layer addSublayer:ovalFour];
     */
    // ***********************************************************
    // ************ End code from Paint Code for Drawing Snoo ***
    // ***********************************************************

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
    drawAnimation.fromValue = [NSNumber numberWithFloat:0.1f];
    drawAnimation.toValue = [NSNumber numberWithFloat:1.0f];
    drawAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    drawAnimation.removedOnCompletion = YES;

    drawAnimation.repeatCount = 1;

    [self.view.layer addSublayer:shapeLayer];
    [shapeLayer addAnimation:drawAnimation forKey:@"animateStroke"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
