//
//  ViewControllerB.h
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 27/01/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ResultViewController : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
    BOOL bannaerIsVisible;
}
@property(assign,nonatomic)BOOL bannerIsVisible;


@property(strong,nonatomic)UIImage *img;

@property(strong,nonatomic)NSString *defaultNum;
@property(strong,nonatomic)NSString *firstColNum;
@property(strong,nonatomic)NSString *secondColNum;


@property (weak, nonatomic) IBOutlet UIView *combinedViewImg;
@property (weak, nonatomic) IBOutlet UIImageView *subViewImgleft;
@property (weak, nonatomic) IBOutlet UIImageView *subViewImgRight;
@property (weak, nonatomic) IBOutlet UIImageView *defaultImgView;

@end
