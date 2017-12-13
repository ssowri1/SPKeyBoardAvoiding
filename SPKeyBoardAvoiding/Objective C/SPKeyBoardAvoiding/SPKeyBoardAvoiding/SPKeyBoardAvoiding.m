//
//  AppDelegate.swift
//  NavigationDrawer
//
//  Created by Sowrirajan Sugumaran on 13/11/17.
//  Copyright © 2017 Sowrirajan Sugumaran. All rights reserved.
//

#import "SPKeyBoardAvoiding.h"

@implementation SPKeyBoardAvoiding 

-(BOOL)touchesShouldBegin:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view{
    
    if ([view isKindOfClass:[UITextField class]]) {
        
        UIView *textField = view;
        self.scrollEnabled = YES;
        CGRect rect = textField.bounds;
        rect = [textField convertRect:rect toView:self];
        CGPoint points = rect.origin;
        points.x = 0;
        points.y -= self.frame.size.height/2 - 80;
        [self setContentOffset:points animated:YES];
        
    }
    return true;
}

@end
