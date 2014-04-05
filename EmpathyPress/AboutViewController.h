//
//  AboutViewController.h
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController
- (IBAction)BackToBtn:(id)sender;
- (IBAction)OpenLink:(id)sender;

- (IBAction)btnAboutAppClick:(id)sender;
- (IBAction)btnAboutClick:(id)sender;
- (IBAction)btnContact:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *BtnAboutApp;
@property (weak, nonatomic) IBOutlet UIButton *BtnAbout;
@property (weak, nonatomic) IBOutlet UIButton *BtnAboutContact;

@end
