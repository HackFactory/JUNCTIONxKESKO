//
//  ReceiptViewController.h
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReceiptTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReceiptViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *line;
@property (strong, nonatomic) NSArray* names;
@property (strong, nonatomic) NSArray* prices;
@property (strong, nonatomic) NSArray* images;
@property (strong, nonatomic) UIView* noodles;
@property int indexx;
@end

NS_ASSUME_NONNULL_END
