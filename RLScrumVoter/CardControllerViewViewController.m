//
//  CardControllerViewViewController.m
//  RLScrumVoter
//
//  Created by Rouli Zhou on 21/03/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import "CardControllerViewViewController.h"

@interface CardControllerViewViewController ()

@end

@implementation CardControllerViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //a centered and stretched image
	UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"mainbg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
