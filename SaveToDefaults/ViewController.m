//
//  ViewController.m
//  SaveToDefaults
//
//  Created by Francisco Surroca on 1/23/14.
//  Copyright (c) 2014 Francisco Surroca. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(BOOL)checkUserName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *userNameString = [defaults objectForKey:@"userName"];
    NSString *passwordString = [defaults objectForKey:@"password"];
    
    if ([userNameString isEqualToString:@"TimTest"] && [passwordString isEqualToString:@"tester1"])
    {
        return true;
    }
    else if ([userNameString isEqualToString:@"BethTest"] && [passwordString isEqualToString:@"tester2"])
    {
        return true;
    }
    return false;
}

-(IBAction)login
{
    NSString *userNameString = userNameTextField.text;
    NSString *passwordString = passwordTextField.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:userNameString forKey:@"userName"];
    [defaults setObject:passwordString forKey:@"password"];

    [defaults synchronize];
    
    if ([self checkUserName] == false)
    {
        NSString *message = [NSString stringWithFormat:@"Username or password is incorrect: \n%@\n%@", userNameString, passwordString];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Access Denied"
                                                        message:message
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alertView show];
        return;
    }
    
    SecondViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"logout"];
    if (view != nil)
    {
        [self presentModalViewController:view animated:YES];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *userNameString = [defaults objectForKey:@"userName"];
    NSString *passwordString = [defaults objectForKey:@"password"];
    [userNameTextField setText:userNameString];
    [passwordTextField setText:passwordString];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
