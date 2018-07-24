//
//  ViewController.m
//  KSTextFieldMask
//
//  Created by Angelina on 24.07.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

#import "ViewController.h"
#import <JMMaskTextField/JMMaskTextField.h>

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    JMMaskTextField *maskTextField = (JMMaskTextField *)textField;
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    if ([maskTextField.mask unmaskString:newText].length >= 16) {
        maskTextField.maskString = @"0000-0000-0000-0000";
    } else {
        maskTextField.maskString = @"0000-0000-0000-0000";
    }
    
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
