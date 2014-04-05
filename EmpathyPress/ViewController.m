//
//  ViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "ViewController.h"

#import "AboutViewController.h"
#import "BooksViewController.h"

#import "SWRevealViewController.h"
#import "FrontViewController.h"
#import "RearViewController.h"
#import "RightViewController.h"

@interface ViewController()<SWRevealViewControllerDelegate>
@end
@implementation ViewController

@synthesize viewController = _viewController;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OpenLink:(id)sender {
    
[[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.empathypress.mn" ]];
}

- (IBAction)aboutUsBtn:(id)sender {

    AboutViewController *viewController=[ [AboutViewController alloc] initWithNibName:nil bundle:nil ];
    [self presentViewController:viewController animated:YES completion:nil];

}

- (IBAction)BookStoreBtn:(id)sender {
//    BooksViewController *viewController=[ [BooksViewController alloc] initWithNibName:nil bundle:nil ];

    
    FrontViewController *frontViewController = [[FrontViewController alloc] init];
    RearViewController *rearViewController = [[RearViewController alloc] init];
    RightViewController *rightViewController = rightViewController = [[RightViewController alloc] init];
    
    UINavigationController *frontNavigationController = [[UINavigationController alloc] initWithRootViewController:frontViewController];
    UINavigationController *rearNavigationController = [[UINavigationController alloc] initWithRootViewController:rearViewController];
    
    SWRevealViewController *revealController = [[SWRevealViewController alloc] initWithRearViewController:rearNavigationController frontViewController:frontNavigationController];
    
    revealController.delegate = self;
    revealController.rightViewController = rightViewController;
    self.viewController = revealController;
    [self presentViewController:self.viewController animated:YES completion:nil];
}

- (IBAction)MyBookStoreBtn:(id)sender {
}


@end
