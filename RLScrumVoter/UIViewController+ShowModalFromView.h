//
//  UIViewController+ShowModalFromView.h
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 05/04/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ShowModalFromView)

-(void)presentModalViewController:(UIViewController *)modalViewController fromView:(UIView *)view hasAnimation:(UIViewAnimationTransition) animation;
@end
