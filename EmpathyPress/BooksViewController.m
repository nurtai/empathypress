//
//  BooksViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 3/30/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "BooksViewController.h"


@interface BooksViewController ()

@end


@implementation BooksViewController

@synthesize menuDrawerWidth, menuDrawerX, recognizer_close, recognizer_open, menuItems, menuTitle;
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

    self.BookList.delegate=self;
    self.BookList.dataSource=self;
    

    int statusbarHeight=[UIApplication sharedApplication].statusBarFrame.size.height;
    menuDrawerWidth = self.view.frame.size.width * 0.75 ;
    menuDrawerX=self.view.frame.origin.x +  self.view.frame.size.width;
    menuDrawer=[[UITableView alloc] initWithFrame:CGRectMake(menuDrawerX, self.view.frame.origin.y+statusbarHeight, menuDrawerWidth, self.view.frame.size.height-statusbarHeight)];
    menuDrawer.backgroundColor=[UIColor whiteColor];
    menuDrawer.delegate = self;
    menuDrawer.dataSource = self;
    menuDrawer.scrollEnabled=true;

    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake([scroll bounds].size.width, [scroll bounds].size.height*2)];
    [menuDrawer addSubview:scroll];
    menuItems = [[NSMutableArray alloc]initWithObjects:@"Book1",@"Book2",@"Book3",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5", nil];
    
    recognizer_close=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
    recognizer_open=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipes:)];
    
    recognizer_close.direction=UISwipeGestureRecognizerDirectionRight;
    recognizer_open.direction=UISwipeGestureRecognizerDirectionLeft;
    
    [self.view addGestureRecognizer:recognizer_open];
    [self.view addGestureRecognizer:recognizer_close];


    [self.view addSubview:menuDrawer];
   
    
    
    
}

                 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)navBtn:(id)sender {
    [self drawerAnimation];
}



- (void) handleSwipes: (UISwipeGestureRecognizer *) sender{
   [self drawerAnimation];
}

- (void) drawerAnimation{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.6];
    CGFloat new_x=0;
    if(self.view.frame.origin.x < 0){
        new_x = 0;
        menuDrawerX=new_x+self.view.frame.size.width;
        self.view.frame=CGRectMake(new_x,0.0, self.view.frame.size.width, self.view.frame.size.height);
        menuDrawer.frame=CGRectMake(menuDrawerX, menuDrawer.frame.origin.y, menuDrawer.frame.size.width, menuDrawer.frame.size.height);
        [menuDrawer reloadData];
    }else{
        new_x = self.menuDrawerWidth * -1;
        menuDrawerX = self.view.frame.size.width;
        self.view.frame=CGRectMake(new_x,0.0, self.view.frame.size.width, self.view.frame.size.height);
        menuDrawer.frame=CGRectMake(menuDrawerX, menuDrawer.frame.origin.y, menuDrawer.frame.size.width, menuDrawer.frame.size.height);
    }
   
    [UIView commitAnimations];
    
    
}
#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // Return the number of rows in the section.
    // Usually the number of items in your array (the one that holds your list)
    return [menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Where we configure the cell in each row
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell;
    
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];

    //set the position of the button
    

     button.frame = CGRectMake(cell.frame.origin.x+30 , cell.frame.origin.y+10, 100, 30);
     [button setTitle:[menuItems objectAtIndex:indexPath.row] forState:UIControlStateNormal];
     [button addTarget:self action:@selector(menuSelect:) forControlEvents:UIControlEventTouchUpInside];
     button.backgroundColor= [UIColor clearColor];
     button.tag=indexPath.row;
     [cell.contentView addSubview:button];


    return cell;
}
- (IBAction)menuSelect:(id)sender{
    
    NSLog(@"Clicked %@",sender);
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UIAlertView *messageAlert = [[UIAlertView alloc]
//                                 initWithTitle:@"Row Selected" message:@"You've selected a row" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    
//    // Display Alert Message
//    [messageAlert show];
    
}



@end
