//
//  AboutContactViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "AboutContactViewController.h"

@interface AboutContactViewController ()

@end

@implementation AboutContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

@synthesize richText;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSString *htmlString = @"<center><p><a href='www.empathypress.mn'>www.empathypress.mn</a></p><p>Утас: 976-11-313019<br>Факс: 976-11-321520<br> E-mail: info@empathy.mn<br></p><p>Сүхбаатар дүүрэг, Бага тойруу, VI-р хороо,<br>“Залуучууд” зочид буудлын арын өргөтгөл,<br>“Эмпати” төвийн III давхар<br>Улаанбаатар/ Монгол улс<br></p></center>";
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    richText.attributedText = attributedString;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
