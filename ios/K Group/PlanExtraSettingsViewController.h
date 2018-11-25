//
//  PlanExtraSettingsViewController.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlanExtraSettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *priceSegmentedControl;
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;
@property (nonatomic, strong) NSArray* durTitles;
//@property (nonatomic, strong) NSArray* durDescs;
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet UIButton *back;
@property (weak, nonatomic) IBOutlet UISwitch *firstTumblr;
@property (weak, nonatomic) IBOutlet UISwitch *secondTumblr;
@property (weak, nonatomic) IBOutlet UISwitch *thirdTumblr;
@property (strong, nonatomic) UIImageView* selected;
@property (weak, nonatomic) IBOutlet UIButton *createButton;

@end

NS_ASSUME_NONNULL_END
