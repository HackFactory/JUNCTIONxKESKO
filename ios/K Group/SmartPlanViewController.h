//
//  SmartPlanViewController.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanSelectionTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface SmartPlanViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *CreatePlanButton;
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet UIImageView *busket;
@property (weak, nonatomic) IBOutlet UILabel *words;
@property (weak, nonatomic) IBOutlet UILabel *progress;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray* titles;
@property (nonatomic, strong) NSArray* descriptions;

@end

NS_ASSUME_NONNULL_END
