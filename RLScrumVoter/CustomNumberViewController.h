//
//  CustomNumberViewController.h
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 23/03/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomNumberViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate,UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *numberPicker;
@property (weak, nonatomic) IBOutlet UIButton *goBtn;
@property(strong, nonatomic)NSArray *listOfNumbersOfLeftCol;
@property(strong, nonatomic)NSArray *listOfNumbersOfRightCol;
@property (strong,nonatomic)NSString *numberOfFirstColumn;
@property(strong,nonatomic)NSString *numberOfSecondColumn;
@property(strong,nonatomic)NSString *defaultNum;

- (IBAction)goSetting:(id)sender;

- (IBAction)sendCustomNum:(id)sender;
@end
