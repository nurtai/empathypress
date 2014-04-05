//
//  SplashScreenViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "SplashScreenViewController.h"



@implementation SplashScreenViewController

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
    UIImage *topImage=[UIImage imageNamed:@"top"];
    self.topImage.image=topImage;
    UIImage *bottomImage=[UIImage imageNamed:@"bottom"];
    self.bottomImage.image=bottomImage;
}



@end
