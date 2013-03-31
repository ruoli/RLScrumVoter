//
//  ViewControllerB.m
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 27/01/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

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
    
//    if ([self.img isEqual:NULL]) {
//        [self.cardBtn setTitle:self.firstColNum forState:UIControlStateNormal];
//        NSLog(@"first is: %@",self.firstColNum);
//    } else {
//        [self.cardBtn setImage:self.img forState:UIControlStateNormal];
//    }

    NSString *num = [[NSString alloc] initWithFormat:@"%@%@",self.firstColNum,self.secondColNum];
    
    [self.cardBtn setTitle:num forState:UIControlStateNormal];
    
    [self.cardBtn setImage:self.img forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cardDismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
