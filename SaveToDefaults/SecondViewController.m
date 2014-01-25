//
//  SecondViewController.m
//  SaveToDefaults
//
//  Created by Francisco Surroca on 1/24/14.
//  Copyright (c) 2014 Francisco Surroca. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


-(IBAction)logout:(id)sender
{
    ViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"login"];
    if (view != nil)
    {
        [self presentModalViewController:view animated:YES];
    }
    
}

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults)
    {
        NSString *userNameString = [defaults objectForKey:@"userName"];
        welcomeLabel.text = [NSString stringWithFormat:@"Welcome\n%@", userNameString];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
