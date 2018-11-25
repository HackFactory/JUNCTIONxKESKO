//
//  ProfileTableViewController.m
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "ProfileTableViewController.h"

@interface ProfileTableViewController ()

@end

@implementation ProfileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:0] forKey:[NSString stringWithFormat:@"tumblr_%d", 1]];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:false] forKey:[NSString stringWithFormat:@"tumblr_%d", 2]];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:false] forKey:[NSString stringWithFormat:@"tumblr_%d", 3]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}


- (UITableViewCell*) bigCellWithTitle: (NSString*) title tableView: (UITableView*) tableView indexPath: (NSIndexPath*) indexPath {
    ProfileBigTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"big" forIndexPath:indexPath];
    cell.title.text = title;
    cell.avatar.layer.cornerRadius = cell.avatar.frame.size.height / 2;
    
    return cell;
}

- (UITableViewCell*) mediumCellWithTitle: (NSString*) title tableView: (UITableView*) tableView indexPath: (NSIndexPath*) indexPath {
    ProfileMediumTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"medium" forIndexPath:indexPath];
    cell.title.text = title;
    return cell;
}

- (UITableViewCell*) dataCellWithLabel: (NSString*) label text: (NSString*) text tableView: (UITableView*) tableView indexPath: (NSIndexPath*) indexPath {
    ProfileDataTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"data" forIndexPath:indexPath];
    cell.mainText.text = text;
    cell.desc.text = label;
    cell.mainText.delegate = self;
    return cell;
}

- (UITableViewCell*) tumblrCellWithLabel: (NSString*) label value: (BOOL) value tableView: (UITableView*) tableView indexPath: (NSIndexPath*) indexPath tag: (int) tag {
    ProfileTumblrTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"tumblr" forIndexPath:indexPath];
    cell.mainText.text = label;
    cell.tumblr.tag = tag;
    [cell.tumblr addTarget:self action:@selector(changedTumblr:) forControlEvents:UIControlEventValueChanged];
    cell.tumblr.on = value;
    return cell;
}

- (void) changedTumblr: (UISwitch*) tumblr {
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:tumblr.on] forKey:[NSString stringWithFormat:@"tumblr_%d", tumblr.tag]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return [self bigCellWithTitle:@"Sasha" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 1) {
        return [self mediumCellWithTitle:@"General" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 2) {
        return [self dataCellWithLabel:@"NAME" text:@"Sasha Johnson" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 3) {
        return [self dataCellWithLabel:@"CARD ID" text:@"4072 4993 2888 4661" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 4) {
        return [self dataCellWithLabel:@"GENDER" text:@"Female" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 5) {
        return [self dataCellWithLabel:@"AGE" text:@"24" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 6) {
        return [self dataCellWithLabel:@"WEIGHT" text:@"58" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 7) {
        return [self mediumCellWithTitle:@"Preferences" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 8) {
        return [self dataCellWithLabel:@"FAVORITE FOOD" text:@"Croissant" tableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 9) {
        return [self tumblrCellWithLabel:@"Vegetarian" value:false tableView:tableView indexPath:indexPath tag:0];
    } else if (indexPath.row == 10) {
        return [self tumblrCellWithLabel:@"Lactose-free" value:false tableView:tableView indexPath:indexPath tag:1];
    } else if (indexPath.row == 11) {
        return [self tumblrCellWithLabel:@"Gluten-free" value:false tableView:tableView indexPath:indexPath tag:2];
    } else if (indexPath.row == 12) {
        return [self tumblrCellWithLabel:@"Nut-free" value:false tableView:tableView indexPath:indexPath tag:3];
    } else if (indexPath.row == 13) {
        return [self mediumCellWithTitle:@"Settings" tableView:tableView indexPath:indexPath];
    }
    return [self tumblrCellWithLabel:@"Notifications" value:true tableView:tableView indexPath:indexPath tag:10];
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray* heights = @[@0, @1, @2, @2, @2, @2, @2, @1, @2, @3, @3, @3, @3, @1, @3];
    if ([heights[indexPath.row] intValue] == 0) {
        return 78;
    } else if ([heights[indexPath.row] intValue] == 1) {
        return 66;
    } return 56;
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}



- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

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
