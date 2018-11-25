//
//  PlanSelectionTableViewController.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanSelectionTableViewCell.h"
#import "PlanSelectionHeaderTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface PlanSelectionTableViewController : UITableViewController
@property (nonatomic, strong) NSArray* titles;
@property (nonatomic, strong) NSArray* descriptions;
@property (weak, nonatomic) IBOutlet UIButton *selectPlanButton;

@end

NS_ASSUME_NONNULL_END
