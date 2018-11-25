//
//  PlanSelectionTableViewCell.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlanSelectionTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *fatherView;
@property (weak, nonatomic) IBOutlet UILabel *planTitle;
@property (weak, nonatomic) IBOutlet UILabel *planDescription;
@property (weak, nonatomic) IBOutlet UIButton *selectPlanButton;
@property (weak, nonatomic) IBOutlet UIView *lowerView;
@property (weak, nonatomic) IBOutlet UIImageView *planImage;

@end

NS_ASSUME_NONNULL_END
