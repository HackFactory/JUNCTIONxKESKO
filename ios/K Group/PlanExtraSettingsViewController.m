//
//  PlanExtraSettingsViewController.m
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "PlanExtraSettingsViewController.h"

@interface PlanExtraSettingsViewController ()

@end

@implementation PlanExtraSettingsViewController
int x = 30;
float h;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changePriceSegment:_priceSegmentedControl];
    _durTitles = @[@"Quick", @"Balanced", @"Long-term"];
    _scroller.contentInset = UIEdgeInsetsMake(x, x, x, x);
    h = 144 - 2 * x;
    _scroller.contentSize = CGSizeMake(_durTitles.count * h + (_durTitles.count - 1) * x, h);
    _scroller.showsHorizontalScrollIndicator = NO;
    _scroller.showsVerticalScrollIndicator = NO;
    // Do any additional setup after loading the view.
}

- (UIImage*) img: (int) i {
    return [UIImage imageNamed:[NSString stringWithFormat:@"speed%d", i]];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    _createButton.layer.cornerRadius = 5;
    _scroller.pagingEnabled = false;
    NSLog(@"%f%f", _scroller.frame.size.height, _scroller.frame.size.width);
    for (int i = 0; i < _durTitles.count; i++) {
        UIImageView* imageView = [UIImageView new];
        imageView.image = [self img:i+1];
        imageView.frame = CGRectMake(i * (x + h), 0, h, h);
        imageView.layer.cornerRadius = 8;
        [_scroller addSubview:imageView];
        UILabel* title = [[UILabel alloc] initWithFrame:CGRectMake(2, 2, 2, 2)];
        title.text = _durTitles[i];
        title.font = [UIFont fontWithName:@"SFProDisplay-Medium" size:20];
        [title sizeToFit];
        int th = title.frame.size.height;
        int tw = title.frame.size.width + 10;
        title.frame = CGRectMake(imageView.frame.origin.x + imageView.frame.size.width / 2 - tw / 2, imageView.frame.origin.y + imageView.frame.size.height + 5, tw, th);
        [_scroller addSubview:title];
        UIButton* button = [UIButton new];
        button.frame = imageView.frame;
        [button addTarget:self action:@selector(pressed:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;
        [_scroller addSubview:button];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_1"] &&
        [[[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_1"] boolValue]) {
        _firstTumblr.on = TRUE;
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:_firstTumblr.on] forKey:@"tumblr_1_set"];
    } else {
        _firstTumblr.on = false;
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:_firstTumblr.on] forKey:@"tumblr_1_set"];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_2"] &&
        [[[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_2"] boolValue]) {
        _secondTumblr.on = TRUE;
    } else {
        _secondTumblr.on = false;
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:_secondTumblr.on] forKey:@"tumblr_2_set"];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_3"] &&
        [[[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_3"] boolValue]) {
        _thirdTumblr.on = TRUE;
    } else {
        _thirdTumblr.on = false;
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:_thirdTumblr.on] forKey:@"tumblr_3_set"];
    }
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    CGRect frame = _line.frame;
    frame.size.height = 0.5;
    _line.frame = frame;
    
}

- (IBAction)changedTumblr:(UISwitch *)sender {
    ;;;;
}

- (IBAction)create:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:_firstTumblr.on] forKey:@"tumblr_1_set"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:_secondTumblr.on] forKey:@"tumblr_2_set"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:_thirdTumblr.on] forKey:@"tumblr_3_set"];
    NSLog(@"CREATING! %d %d %d", _firstTumblr.on, _secondTumblr.on, _thirdTumblr.on);
}

- (void) pressed: (UIButton*) sender {
    if (_selected)
        [_selected removeFromSuperview];
    
    _selected = [[UIImageView alloc] initWithFrame:sender.frame];
    _selected.image = [UIImage imageNamed:@"check"];
    [_scroller addSubview:_selected];
}

- (IBAction)changePriceSegment:(id)sender {

}


-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
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
