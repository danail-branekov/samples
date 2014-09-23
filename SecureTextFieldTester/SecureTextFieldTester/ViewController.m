//
//  ViewController.m
//  SecureTextFieldTester
//
//  Created by Danail Branekov on 9/23/14.
//  Copyright (c) 2014 TENKOD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *secureTextField;
- (IBAction)onShow:(id)sender;

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

- (IBAction)onShow:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Secure text field content" message:self.secureTextField.text delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",nil];
    [alert show];
}
@end
