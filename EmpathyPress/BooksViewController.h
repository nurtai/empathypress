//
//  BooksViewController.h
//  EmpathyPress
//
//  Created by Nurtai on 3/30/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BooksViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>{
    UITableView *menuDrawer;
}
@property (readonly,nonatomic) UISwipeGestureRecognizer *recognizer_open, *recognizer_close;
@property (readonly, nonatomic) int menuDrawerX, menuDrawerWidth;
@property (nonatomic,retain) NSArray *menuItems;
@property (strong,nonatomic) IBOutlet UILabel *menuTitle;


- (void) handleSwipes: (UISwipeGestureRecognizer *) sender;
- (void) drawerAnimation;
- (IBAction)navBtn:(id)sender;
- (IBAction)menuSelect:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *BookList;
@property (weak, nonatomic) IBOutlet UITableView *mmenu;

@end
