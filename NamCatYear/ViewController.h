//
//  ViewController.h
//  NamCatYear
//
//  Created by Namrata on 10/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kHorizontalPadding 40.0
#define kAllUIElementHeight 50.0
#define kVerticalPadding 30.0

@interface ViewController : UIViewController
{
    UILabel *displayLabel;
    UIButton *calculateButton;
    CGFloat displayLabelWidth;
    CGFloat textFieldWidth;
    CGFloat screenHeight;
    CGFloat screenWidth;
    UITextField *TextField;
    CGFloat calculateButtonYCoordinate;
    CGFloat  displayLabelYCoordinte;
    
}



@end

