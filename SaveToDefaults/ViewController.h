//
//  ViewController.h
//  SaveToDefaults
//
//  Created by Francisco Surroca on 1/23/14.
//  Copyright (c) 2014 Francisco Surroca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *loginButton;
    IBOutlet UITextField *userNameTextField;
    IBOutlet UILabel *userNameLabel;
    
    IBOutlet UITextField *passwordTextField;
    IBOutlet UILabel *passwordLabel;
}

-(IBAction)login;


@end
