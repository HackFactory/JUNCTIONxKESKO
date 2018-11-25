//
//  PlanSelectionHeaderTableViewCell.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlanSelectionHeaderTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelHeader;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@end

NS_ASSUME_NONNULL_END
