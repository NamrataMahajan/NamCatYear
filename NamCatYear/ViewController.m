//
//  ViewController.m
//  NamCatYear
//
//  Created by Namrata on 10/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor= [UIColor grayColor];
    
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    
    calculateButtonYCoordinate = kVerticalPadding+kAllUIElementHeight+150;
    
    textFieldWidth = screenWidth-(2*kHorizontalPadding);
    
    
    
    TextField = [[UITextField alloc]initWithFrame:CGRectMake(kHorizontalPadding, 150,textFieldWidth,kAllUIElementHeight)];
    
    TextField.backgroundColor = [UIColor cyanColor];
    [TextField setBorderStyle:UITextBorderStyleBezel];
    
    [self.view addSubview:TextField];
    
    
    calculateButton = [[UIButton alloc]initWithFrame:CGRectMake((5*kHorizontalPadding),calculateButtonYCoordinate, 150,60)];
    
    calculateButton.layer.cornerRadius=20;
    calculateButton.backgroundColor = [UIColor orangeColor];
    
    [calculateButton addTarget:self action:@selector(handlecal) forControlEvents:UIControlEventTouchUpInside];
    [calculateButton setTitle:@"Calculate" forState:UIControlStateNormal ];
    [self.view addSubview:calculateButton];
    
    displayLabelWidth = screenWidth-(2*kHorizontalPadding);
    displayLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizontalPadding, 400,displayLabelWidth, kAllUIElementHeight)];
    displayLabel.font=[UIFont systemFontOfSize:30];
    displayLabel.textAlignment=NSTextAlignmentCenter;
    displayLabel.textColor=[UIColor purpleColor];
    
    [self.view addSubview:displayLabel];
    TextField.keyboardType = UIKeyboardTypeNumberPad;
}
-(void)handlecal {
    [self displayCate:TextField.text];
}


-(void)displayCate:(NSString*)content {
    int Age = content.intValue;
    if(content)
    {
        if(Age>0&&Age<100) {
            NSString *currentValueString = TextField.text;
            
            float currentValueInt = currentValueString.floatValue;
            
            currentValueInt = currentValueInt /7;
            
            NSString *newValueString = [NSString stringWithFormat:@"  Catyear is:%0.03f ",currentValueInt];
            
            displayLabel.text = newValueString;
            
        }
        else {
            displayLabel.text=@"InValid Age";
        }
        
    }
    else {
        displayLabel.text=@"Please Enter the Age";
        
    }
}



-(BOOL)TextFieldShouldReturn:(UITextField *)textField {
    [self displayCate:textField.text];
    [textField resignFirstResponder];
    return YES;
}


@end
