//
//  FeaturingTableViewController.h
//  K Group
//
//  Created by Vladislav Shakhray on 25/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanSelectionTableViewCell.h"
#import "PlanSelectionHeaderTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface FeaturingTableViewController : UITableViewController
@property (nonatomic, strong) NSArray* titles;
@property (nonatomic, strong) NSArray* descs;

@end

NS_ASSUME_NONNULL_END
