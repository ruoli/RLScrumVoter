//
//  ViewControllerB.m
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 27/01/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
@property(strong,nonatomic)UIImage *imgLeft;
@property(strong,nonatomic)UIImage *imgRight;
@property(strong,nonatomic)UIImage *imgDf;
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
    adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
    adView.frame = CGRectOffset(adView.frame, 0, 50.0f);    adView.requiredContentSizeIdentifiers = [NSSet setWithObject:ADBannerContentSizeIdentifierPortrait];
    adView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    [self.view addSubview:adView];
    adView.delegate = self;
    self.bannerIsVisible = NO;
    
    
    if (self.defaultNum !=nil) {
        
        NSString *df = [NSString stringWithFormat:@"f%@.png",self.defaultNum];
        self.imgDf = [UIImage imageNamed:df];
        [self.defaultImgView setImage:self.imgDf];
        NSLog(@"sent to result df %@", df);
    } else if (self.firstColNum != nil && self.secondColNum != nil)
    {
        NSString *sl = [NSString stringWithFormat:@"f%@.png",self.firstColNum];
        NSString *sr = [NSString stringWithFormat:@"f%@.png", self.secondColNum];
        self.imgLeft = [UIImage imageNamed:sl];
        self.imgRight = [UIImage imageNamed:sr];
        
        [self.subViewImgleft setImage:self.imgLeft];
        [self.subViewImgRight setImage:self.imgRight];
        
        NSLog(@"sent to result sl %@", sl);
        NSLog(@"sent to result sl %@", sr);
    }else if(self.img != nil){
        [self.defaultImgView setImage:self.img];
    }
    
    
    
    //[self.defaultImgView setImage:self.img];
    UITapGestureRecognizer *tap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self.combinedViewImg addGestureRecognizer:tap];
    
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    [self.combinedViewImg addGestureRecognizer:pinch];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if (!self.bannerIsVisible) {
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0, -50.0f);
        self.bannerIsVisible = YES;
    }
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    if (self.bannerIsVisible) {
        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
        banner.frame =CGRectOffset(banner.frame, 0, 50.0f);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
    }
}

-(void)tapAction
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)handlePinch:(UIPinchGestureRecognizer *)gesture
{
    gesture.view.transform = CGAffineTransformMakeScale(gesture.scale, gesture.scale);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidUnload {
    [self setCombinedViewImg:nil];
    [self setSubViewImgleft:nil];
    [self setSubViewImgRight:nil];
    [self setDefaultImgView:nil];
    [super viewDidUnload];
}
@end
