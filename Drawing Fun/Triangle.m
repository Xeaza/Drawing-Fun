//
//  Triangle.m
//  Drawing Fun
//
//  Created by Taylor Wright-Sanson on 11/21/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    CAShapeLayer *mask = [[CAShapeLayer alloc] init];
    mask.frame = self.layer.bounds;

    CGFloat width = self.layer.frame.size.width;
    CGFloat height = self.layer.frame.size.height;

    CGMutablePathRef path = CGPathCreateMutable();

    CGPathMoveToPoint(path, nil, 30, 0);
    CGPathAddLineToPoint(path, nil, width, 0);
    CGPathAddLineToPoint(path, nil, width, height);
    CGPathAddLineToPoint(path, nil, 0, height);
    CGPathAddLineToPoint(path, nil, 30, 0);
    CGPathCloseSubpath(path);

    mask.path = path;
    CGPathRelease(path);

    self.layer.mask = mask;

    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = self.bounds;
    shape.path = path;
    shape.lineWidth = 3.0f;
    shape.strokeColor = [UIColor whiteColor].CGColor;
    shape.fillColor = [UIColor clearColor].CGColor;

    [self.layer insertSublayer: shape atIndex:0];

}




@end
