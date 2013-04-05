//
//  ViewController.m
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 27/01/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import "NumberGridViewController.h"
#import "ResultViewController.h"

@interface NumberGridViewController ()
@property(strong,nonatomic)UIImage *image;
@end

@implementation NumberGridViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)goToSetting:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cardAction:(id)sender {
    UIImage *img = [(UIButton *)sender currentBackgroundImage];
    [self performSegueWithIdentifier:@"cardSegue" sender:img];
    
    
   
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultViewController *viewcontroller;
    if ([segue.identifier isEqualToString:@"cardSegue"]) {
        UIImage * img = (UIImage *)sender;
        
        viewcontroller = [segue destinationViewController];
        viewcontroller.img = img;
        }
    
}

//-(UIViewAnimationTransition *)animationCompleted
//{
//    return [ UIViewAnimationOptionTransitionCrossDissolve];
//}


@end
