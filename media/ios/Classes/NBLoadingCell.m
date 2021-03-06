//
//  NBLoadingCell.m
//  NewsBlur
//
//  Created by Samuel Clay on 6/12/13.
//  Copyright (c) 2013 NewsBlur. All rights reserved.
//

#import "NBLoadingCell.h"

@implementation NBLoadingCell

@synthesize animating;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColorFromRGB(0xE1EBFF);
        animating = YES;
    }
    return self;
}

- (void)endAnimation {
    animating = NO;
}
- (void)setNeedsLayout {
	[super setNeedsLayout];
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

- (void)animate {
    if (!self.window || !self.superview.window) return;
    NSLog(@"Animate");
    if (!animating) return;
    [UIView animateWithDuration:.650f delay:0.2f options:nil animations:^{
        self.backgroundColor = UIColorFromRGB(0x5C89C9);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.05f animations:^{
            self.backgroundColor = UIColorFromRGB(0xE1EBFF);
        } completion:^(BOOL finished) {
            [self animate];
        }];
    }];
}

@end
