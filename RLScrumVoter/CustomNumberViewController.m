//
//  CustomNumberViewController.m
//  RLScrumVoter
//
//  Created by Ruoli Zhou on 23/03/2013.
//  Copyright (c) 2013 LeeMac. All rights reserved.
//

#import "CustomNumberViewController.h"
#import "ResultViewController.h"
@interface CustomNumberViewController ()

@end

@implementation CustomNumberViewController

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
    //UIView background
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"pickerbackground.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    //init picker
    
    self.numberPicker.showsSelectionIndicator = TRUE;
    self.listOfNumbers = [[NSArray alloc] initWithObjects:@"",@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"?",nil];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Number of rows to display in each component
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component==0) {
        return [self.listOfNumbers count];
    }
    return [self.listOfNumbers count];
}

//Number of columns to display
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

//define what to display in each rows and columns
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component==0) {
        return [self.listOfNumbers objectAtIndex:row];
    }
    return [self.listOfNumbers objectAtIndex:row];
}

//selected number to be stored in nsstring
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component==0) {
        self.numberOfFirstColumn = [self.listOfNumbers objectAtIndex:row];
        
    } else
    {
        self.numberOfSecondColumn = [self.listOfNumbers objectAtIndex:row];
        
    }
    
}


- (IBAction)goSetting:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sendCustomNum:(id)sender {
    [self performSegueWithIdentifier:@"segueCustomNum" sender:sender];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultViewController *rvc = [segue destinationViewController];
    rvc.firstColNum = self.numberOfFirstColumn;
    rvc.secondColNum = self.numberOfSecondColumn;
}


@end
