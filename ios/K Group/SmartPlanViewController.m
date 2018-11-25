//
//  SmartPlanViewController.m
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "SmartPlanViewController.h"

@interface SmartPlanViewController ()

@end

@implementation SmartPlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"plan_number"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _titles = @[@"The Beginner Meal Plan", @"The Muscle-Gain Plan", @"The Get-Lean Meal Plan", @"Vegetarian Balanced", @"Vegan Meal Plan", @"Ketogenic Meal Plan", @"Paleo Meal Plan", @"Fertility Meal Plan"];
    
    _descriptions = @[@"Health & Energy", @"Carbs and calories.", @"Accelerating weight.", @"Eating vegetarian meals.", @"Cool vegan diet.", @"Low-carbohydrate diet", @"Paleo diet", @"Eating slow carbs."];
    // Do any additional setup after loading the view.
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    CGRect frame = _line.frame;
    frame.size.height = 0.5;
    _line.frame = frame;
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    _CreatePlanButton.layer.cornerRadius = 5;
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"plan_number"]) {
        int num = [[[NSUserDefaults standardUserDefaults] objectForKey:@"plan_number"] intValue];
        _tableView.hidden = FALSE;
        [_tableView reloadData];
        _progress.text = @"Progress";
    } else {
        _tableView.hidden = true;
        _progress.text = @"Smart Plans";
    }
}
- (IBAction)startCreation:(id)sender {
    
}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"plan_number"]) {
        return 2;
    } else {
        return 0;
    }
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        int index =[[[NSUserDefaults standardUserDefaults] objectForKey:@"plan_number"] intValue];
        NSLog(@"SELECTED PLAN:%d", index);
        index = index % 3;
        PlanSelectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"plan_main" forIndexPath:indexPath];
        cell.planTitle.text = _titles[index];
        cell.planDescription.text = _descriptions[index];
        cell.planImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"plan_%d", (int)(index + 1)]];
        cell.fatherView.layer.shadowColor = [UIColor colorWithWhite:0.5 alpha:0.3].CGColor;
        cell.fatherView.layer.shadowOffset = CGSizeMake(8, 8);
        cell.fatherView.layer.shadowOpacity = 0.3;
        cell.layer.cornerRadius = 8.0;
        cell.clipsToBounds = TRUE;
        cell.selectPlanButton.layer.cornerRadius = cell.selectPlanButton.frame.size.height / 2.0;
        cell.selectPlanButton.hidden = TRUE;
        return cell;
    } else {
        UITableViewCell* cell = [UITableViewCell new];
        UIImageView* img = [UIImageView new];
        img.frame = CGRectMake(0, 0, 375, 667);
        img.image = [UIImage imageNamed:@"achievements"];
        [cell addSubview:img];
        return cell;
    }
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row > 0)
        return 667;
    return 290;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
