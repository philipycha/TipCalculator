//
//  ViewController.m
//  TipCalculator
//
//  Created by Philip Ha on 2016-09-16.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipPercentageSlider;
@property (weak, nonatomic) IBOutlet UILabel *currentTipPercentage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)calculateTip{
    
    float billAmount = self.billAmountTextField.text.floatValue;
    float tipAmount = (billAmount * (self.tipPercentageSlider.value/100));
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"Tip Amount $%.2f", tipAmount];
    self.currentTipPercentage.text = [NSString stringWithFormat:@"%.1f", self.tipPercentageSlider.value];
    
}


- (IBAction)sliderChanged:(UISlider *)sender {
    
    [self calculateTip];
    
    
}


- (IBAction)calculateTipPressed:(UIButton *)sender {
    
    [self calculateTip];
    [self.billAmountTextField endEditing:YES];
    
}






@end
