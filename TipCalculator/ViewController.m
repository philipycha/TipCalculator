//
//  ViewController.m
//  TipCalculator
//
//  Created by Philip Ha on 2016-09-16.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

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
    float tipAmount = (billAmount * 0.15);
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f", tipAmount];
    
}

- (IBAction)calculateTipPressed:(UIButton *)sender {
    
    [self calculateTip];

}





@end
