//
//  AppDelegate.swift
//  NavigationDrawer
//
//  Created by Sowrirajan Sugumaran on 13/11/17.
//  Copyright © 2017 Sowrirajan Sugumaran. All rights reserved.
//

#import "ViewController.h"
#import "SPKeyBoardAvoiding.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet SPKeyBoardAvoiding *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.scrollView setContentOffset:CGPointZero animated:YES];
    [self.view endEditing:YES];
    return true;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
