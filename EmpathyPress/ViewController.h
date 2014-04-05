//
//  ViewController.h
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SWRevealViewController;
@interface ViewController : UIViewController

@property (strong, nonatomic) SWRevealViewController *viewController;
- (IBAction)OpenLink:(id)sender;
- (IBAction)aboutUsBtn:(id)sender;
- (IBAction)BookStoreBtn:(id)sender;
- (IBAction)MyBookStoreBtn:(id)sender;


@end
