//
//  CustomNumberViewController.h
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 23/03/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomNumberViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *numberPicker;
@property(strong, nonatomic)NSArray *listOfNumbers;
@property (strong,nonatomic)NSString *numberOfFirstColumn;
@property(strong,nonatomic)NSString *numberOfSecondColumn;

- (IBAction)goSetting:(id)sender;

- (IBAction)sendCustomNum:(id)sender;
@end
