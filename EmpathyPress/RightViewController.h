//
//  RightViewController.h
//  EmpathyPress
//
//  Created by Nurtai on 4/5/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RightViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    
}
@property (weak, nonatomic) IBOutlet UITableView *BookList;
@property (nonatomic, retain) NSArray *menuItems;

@end
