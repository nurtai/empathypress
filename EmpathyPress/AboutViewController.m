//
//  AboutViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "AboutViewController.h"
#import "AboutAppViewController.h"
#import "AboutContactViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

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

    self.BtnAboutApp.layer.cornerRadius=5;
    self.BtnAbout.layer.cornerRadius=5;
    self.BtnAboutContact.layer.cornerRadius=5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BackToBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

- (IBAction)OpenLink:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.empathypress.mn" ]];
}

- (IBAction)btnAboutAppClick:(id)sender {
    AboutAppViewController *viewController=[ [AboutAppViewController alloc] initWithNibName:nil bundle:nil ];
    [self presentViewController:viewController animated:YES completion:nil];
    

}

- (IBAction)btnAboutClick:(id)sender {
    AboutAppViewController *viewController=[ [AboutAppViewController alloc] initWithNibName:nil bundle:nil ];
    [self presentViewController:viewController animated:YES completion:nil];

}

- (IBAction)btnContact:(id)sender {
    AboutContactViewController *viewController=[ [AboutContactViewController alloc] initWithNibName:nil bundle:nil ];
    [self presentViewController:viewController animated:YES completion:nil];
}
@end
