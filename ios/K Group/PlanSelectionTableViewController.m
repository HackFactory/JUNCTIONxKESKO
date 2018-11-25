//
//  PlanSelectionTableViewController.m
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "PlanSelectionTableViewController.h"

@interface PlanSelectionTableViewController ()

@end

@implementation PlanSelectionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _titles = @[@"The Beginner Meal Plan", @"The Muscle-Gain Plan", @"The Get-Lean Meal Plan", @"Vegetarian Balanced", @"Vegan Meal Plan", @"Ketogenic Meal Plan", @"Paleo Meal Plan", @"Fertility Meal Plan"];
    
    _descriptions = @[@"Health & Energy", @"Carbs and calories.", @"Accelerating weight.", @"Eating vegetarian meals.", @"Cool vegan diet.", @"Low-carbohydrate diet", @"Paleo diet", @"Eating slow carbs."];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _titles.count + 2;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0 || indexPath.row == 5) {
        return 69;
    }
    return 290;
}
- (IBAction)selectedPlan:(UIButton*)sender {
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:((UIButton*)sender).tag] forKey:@"plan_number"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        PlanSelectionHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"plan_header" forIndexPath:indexPath];
        cell.labelHeader.text = @"Our Top Picks";
        cell.backButton.hidden = FALSE;
        return cell;
    } else if (indexPath.row < 5){
        PlanSelectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"plan_main" forIndexPath:indexPath];
        cell.planTitle.text = _titles[indexPath.row - 1];
        cell.planDescription.text = _descriptions[indexPath.row - 1];
        cell.planImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"plan_%d", (int)indexPath.row]];
        cell.fatherView.layer.shadowColor = [UIColor colorWithWhite:0.5 alpha:0.3].CGColor;
        cell.fatherView.layer.shadowOffset = CGSizeMake(8, 8);
        cell.fatherView.layer.shadowOpacity = 0.3;
        cell.layer.cornerRadius = 8.0;
        cell.clipsToBounds = TRUE;
        cell.selectPlanButton.layer.cornerRadius = cell.selectPlanButton.frame.size.height / 2.0;
        cell.selectPlanButton.tag = indexPath.row - 1;
        [cell.selectPlanButton addTarget:self action:@selector(selectedPlan:) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    } else if (indexPath.row == 5) {
        PlanSelectionHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"plan_header" forIndexPath:indexPath];
        cell.labelHeader.text = @"Special Plans";
        cell.backButton.hidden = TRUE;
        return cell;
    } else {
        PlanSelectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"plan_main" forIndexPath:indexPath];
        cell.planTitle.text = _titles[indexPath.row - 2];
        cell.planDescription.text = _descriptions[indexPath.row - 2];
        cell.planImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"plan_%d", (int)indexPath.row - 2]];
        cell.fatherView.layer.shadowColor = [UIColor colorWithWhite:0.5 alpha:0.3].CGColor;
        cell.fatherView.layer.shadowOffset = CGSizeMake(8, 8);
        cell.fatherView.layer.shadowOpacity = 0.3;
        cell.layer.cornerRadius = 8.0;
        cell.clipsToBounds = TRUE;
        cell.selectPlanButton.layer.cornerRadius = cell.selectPlanButton.frame.size.height / 2.0;
        cell.selectPlanButton.tag = indexPath.row - 2;
        [cell.selectPlanButton addTarget:self action:@selector(selectedPlan:) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    }
}

- (BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return false;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
