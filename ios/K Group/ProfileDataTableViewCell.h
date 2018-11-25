//
//  ProfileDataTableViewCell.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProfileDataTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *mainText;
@property (weak, nonatomic) IBOutlet UILabel *desc;

@end

NS_ASSUME_NONNULL_END
