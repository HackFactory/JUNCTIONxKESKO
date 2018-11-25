//
//  ProfileTumblrTableViewCell.h
//  K Group
//
//  Created by Vladislav Shakhray on 25/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProfileTumblrTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *mainText;
@property (weak, nonatomic) IBOutlet UISwitch *tumblr;

@end

NS_ASSUME_NONNULL_END
