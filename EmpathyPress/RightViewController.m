//
//  RightViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 4/5/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "RightViewController.h"
#import "SWRevealViewController.h"
@interface RightViewController ()

@end

@implementation RightViewController
@synthesize menuItems;
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
    self.BookList.delegate = self;
    self.BookList.dataSource = self;
    menuItems = [[NSMutableArray alloc]initWithObjects:@"Book1",@"Book2",@"Book3",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5",@"Book4",@"Book5", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
//    CGRect *customframe = CGRectMake(2, 2, 250, 30); // Set the frame** as per your own.
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(70, 2, 250, 30)];
    //lbl.frame=CGRectMake(2, 2, 250, 30);
    lbl.text = [menuItems objectAtIndex:indexPath.row]; // Set the label value from array**
    [cell.contentView addSubview:lbl];
    // Configure the cell...
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


 #pragma mark - Table view delegate
 
 // In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
SWRevealViewController *revealController = [self revealViewController];
     UIViewController *frontViewController = revealController.frontViewController;
     [revealController pushFrontViewController:frontViewController animated:YES ];
     
     
  }
 



@end
