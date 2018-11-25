//
//  ProfileBigTableViewCell.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProfileBigTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *avatar;

@end

NS_ASSUME_NONNULL_END
