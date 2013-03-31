//
//  ViewControllerB.h
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 27/01/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *cardBtn;
@property(strong,nonatomic)UIImage *img;

@property(strong,nonatomic)NSString *firstColNum;
@property(strong,nonatomic)NSString *secondColNum;

- (IBAction)cardDismiss:(id)sender;

@end
