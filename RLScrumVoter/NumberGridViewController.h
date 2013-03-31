//
//  ViewController.h
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 27/01/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberGridViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardBtns;

- (IBAction)goToSetting:(id)sender;


- (IBAction)cardAction:(id)sender;

@end
