//
//  FrontViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 4/5/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "FrontViewController.h"
#import "SWRevealViewController.h"
@interface FrontViewController ()

@end

@implementation FrontViewController

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
    // Do any additional setup after loading the view from its nib.

    
    SWRevealViewController *revealController = [self revealViewController];
//    
//   [revealController panGestureRecognizer];
//    [revealController tapGestureRecognizer];
    
//    //Add an image to your project & set that image here.
//    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav.png"]style:UIBarButtonItemStyleBordered target:revealController action:@selector(revealToggle:)];
//    self.navigationItem.leftBarButtonItem = revealButtonItem;
    
    //Add an image to your project & set that image here.
//    UIBarButtonItem *rightRevealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav.png"]style:UIBarButtonItemStyleBordered target:revealController action:@selector(rightRevealToggle:)];
//    self.navigationItem.rightBarButtonItem = rightRevealButtonItem;
    [self.navbtn addTarget:revealController action:@selector(rightRevealToggle:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)backBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];

}


@end
