//
//  SecondViewController.h
//  SaveToDefaults
//
//  Created by Francisco Surroca on 1/24/14.
//  Copyright (c) 2014 Francisco Surroca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UIButton *logoutButton;
    IBOutlet UILabel *welcomeLabel;
}

-(IBAction)logout:(id)sender;

@end
