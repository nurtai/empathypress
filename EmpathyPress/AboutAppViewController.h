//
//  AboutAppViewController.h
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutAppViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *richText;
- (IBAction)closeBtn:(id)sender;

@end
