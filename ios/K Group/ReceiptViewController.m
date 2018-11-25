//
//  ReceiptViewController.m
//  K Group
//
//  Created by Vladislav Shakhray on 24/11/2018.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "ReceiptViewController.h"

@interface ReceiptViewController ()

@end

@implementation ReceiptViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _names = @[
               @[@"K-Menu kreikkalainen jogurtti 1kg", @"Pirkka vadelma 200 g pakaste", @"Pirkka Luomu suomalainen tomaatti 400g", @"Pirkka suomalainen naudan kuutioitu keittoliha n800g", @"GoGreen bean chili sin carne 380 g", @"Pirkka Luomu babypinaatti 65g", @"Paprika vihreä ulkomainen", @"Royal Greenland Kuorellisia katkarapuja 500g MSC pa"],
               @[@"Kotitilan maalaismunat M10 580g", @"Meira Manteli 100g ruskea pussi", @"Kurkku Suomi", @"Porsaan ulkofile lihamestarilta kg", @"Coppola Ceci kikherneet 400g/240g vedessä", @"Atria perhetilan kana ohut fileeleike naturel 5-7kpl 480g", @"Siika tuore Suomi", @"Pirkka espanjalainen parsakaali 400g 1lk", @"Valio Luomu™ voi 200g", @"Violife 235g Prosociano parmesaanimakuinen kasviperäinen juustovaihtoehto", @"Valio kevytmaito 1 l HYLA UHT"],
               @[@"Pirkka Parhaat vapaan kanan omega -kananmuna 6kpl/348g", @"Violife 200g yrtti juusto viipale", @"Pirkka Luomu babypinaatti 65g", @"GoGreen Luomu chia siemenet 270g", @"Pirkka mansikka 250 g 1lk ulkomainen", @"Nauta ulkofile pihvi kg", @"Avokado 800g CL/CO/MX 1lk", @"Pirkka Luomu suomalainen tomaatti 400g", @"Pirkka viipaloidut herkkusienet Hollanti 200g", @"Pirkka espanjalainen parsakaali 400g 1lk"],
               @[@"Pirkka Parhaat vapaan kanan omega -kananmuna 6kpl/348g", @"Leerdam 150g Caractere juusto viipale", @"Royal Greenland Kuorellisia katkarapuja 500g MSC pa", @"Pirkka suomalainen nauta-sika jauheliha 20% 400g", @"Avokado 800g CL/CO/MX 1lk", @"Pirkka espanjalainen parsakaali 400g 1lk", @"Earth Control hasselpähkinät 90g", @"Tuore kuhafile Suomi", @"Siika tuore Suomi", @"Pirkka viipaloidut herkkusienet Hollanti 200g", @"Sallinen saksanpähkinä 70g"],
               @[@"Kotitilan maalaismunat M10 580g", @"Navina tofu 500g", @"Kurkku Suomi", @"Porsaan ulkofile lihamestarilta kg", @"Coppola Ceci kikherneet 400g/240g vedessä", @"Atria perhetilan kana ohut fileeleike naturel 5-7kpl 480g", @"Tuore kuhafile Suomi", @"Pirkka espanjalainen parsakaali 400g 1lk", @"Valio Luomu™ voi 200g", @"Violife 235g Prosociano parmesaanimakuinen kasviperäinen juustovaihtoehto", @"Arla 1 L laktoositon Cafè UHT maito"]
               ];
    
    _prices = @[
                @[@"2,59", @"1,59", @"4,49", @"14,20", @"1,85", @"2,19", @"0,80", @"6,29"],
                @[@"1,55", @"2,55", @"0,94", @"12,9", @"1,45", @"6,99", @"22,9", @"1,65", @"2,89", @"5,49", @"1,85"],
                @[@"1,29", @"3,69", @"2,19", @"3,39", @"4,99", @"19,9", @"2,49", @"4,49", @"2,49", @"1,65"],
                @[@"1,29", @"2,60", @"6,29", @"2,79", @"2,49", @"1,65", @"5,00", @"37,9", @"22,9", @"2,49", @"1,99"],
                @[@"1,55", @"2,19", @"0,94", @"12,9", @"1,45", @"6,99", @"37,9", @"1,65", @"2,89", @"5,49", @"1,99"]
                ];
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
    _addButton.layer.shadowColor = [UIColor blueColor].CGColor;
    _addButton.layer.shadowRadius = 5;
    _addButton.layer.shadowOpacity = 0.1;
    _noodles = [UIView new];
    _noodles.backgroundColor = [UIColor whiteColor];
    _noodles.frame = CGRectMake(0, _line.frame.origin.y + 1, self.view.frame.size.width, 800);
    UIImageView* nood = [UIImageView new];
    CGFloat width = self.view.frame.size.width;
    CGFloat x = 30;
    CGFloat y = 80;
    nood.frame = CGRectMake(x, y, width - 2 * x, width - 2 * x);
    
    NSArray* images = @[
                        [UIImage imageNamed:@"noodles_1"],
                        [UIImage imageNamed:@"noodles_2"],
                        [UIImage imageNamed:@"noodles_3"],
                        [UIImage imageNamed:@"noodles_4"],
                        [UIImage imageNamed:@"noodles_5"],
                        [UIImage imageNamed:@"noodles_6"],
                        [UIImage imageNamed:@"noodles_7"],
                        [UIImage imageNamed:@"noodles_8"],
                        [UIImage imageNamed:@"noodles_9"],
                        [UIImage imageNamed:@"noodles_10"],
                        [UIImage imageNamed:@"noodles_11"],
                        [UIImage imageNamed:@"noodles_12"],
                        [UIImage imageNamed:@"noodles_13"],
                        [UIImage imageNamed:@"noodles_14"],
                        [UIImage imageNamed:@"noodles_15"],
                        [UIImage imageNamed:@"noodles_16"],
                        [UIImage imageNamed:@"noodles_17"],
                        [UIImage imageNamed:@"noodles_18"],
                        [UIImage imageNamed:@"noodles_19"],
                        [UIImage imageNamed:@"noodles_20"],
                        [UIImage imageNamed:@"noodles_21"],
                        [UIImage imageNamed:@"noodles_22"],
                        [UIImage imageNamed:@"noodles_23"],
                        [UIImage imageNamed:@"noodles_24"],
                        [UIImage imageNamed:@"noodles_25"],
                        [UIImage imageNamed:@"noodles_26"],
                        [UIImage imageNamed:@"noodles_27"],
                        [UIImage imageNamed:@"noodles_28"],
                        [UIImage imageNamed:@"noodles_29"],
                        [UIImage imageNamed:@"noodles_30"],
                        [UIImage imageNamed:@"noodles_31"],
                        [UIImage imageNamed:@"noodles_32"],
                        [UIImage imageNamed:@"noodles_33"],
                        [UIImage imageNamed:@"noodles_34"],
                        [UIImage imageNamed:@"noodles_35"],
                        [UIImage imageNamed:@"noodles_36"],
                        [UIImage imageNamed:@"noodles_37"],
                        [UIImage imageNamed:@"noodles_38"],
                        [UIImage imageNamed:@"noodles_39"],
                        [UIImage imageNamed:@"noodles_40"],
                        [UIImage imageNamed:@"noodles_41"],
                        [UIImage imageNamed:@"noodles_42"],
                        [UIImage imageNamed:@"noodles_43"],
                        [UIImage imageNamed:@"noodles_44"],
                        [UIImage imageNamed:@"noodles_45"],
                        [UIImage imageNamed:@"noodles_46"],
                        [UIImage imageNamed:@"noodles_47"],
                        [UIImage imageNamed:@"noodles_48"],
                        [UIImage imageNamed:@"noodles_49"],
                        [UIImage imageNamed:@"noodles_50"],
                        [UIImage imageNamed:@"noodles_51"],
                        [UIImage imageNamed:@"noodles_52"],
                        [UIImage imageNamed:@"noodles_53"],
                        [UIImage imageNamed:@"noodles_54"],
                        [UIImage imageNamed:@"noodles_55"],
                        [UIImage imageNamed:@"noodles_56"],
                        [UIImage imageNamed:@"noodles_57"],
                        [UIImage imageNamed:@"noodles_58"],
                        [UIImage imageNamed:@"noodles_59"],
                        [UIImage imageNamed:@"noodles_60"],
                        [UIImage imageNamed:@"noodles_61"],
                        [UIImage imageNamed:@"noodles_62"],
                        [UIImage imageNamed:@"noodles_63"],
                        [UIImage imageNamed:@"noodles_64"],
                        [UIImage imageNamed:@"noodles_65"],
                        [UIImage imageNamed:@"noodles_66"],
                        [UIImage imageNamed:@"noodles_67"]
                        ];
    nood.animationImages = images;
    nood.animationRepeatCount = 100;
    nood.animationDuration = 2.5;
    [nood startAnimating];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2.2 * NSEC_PER_SEC), dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:1.0 animations:^{
                self.noodles.alpha = 0.0;
            }];
        });
    });
    [_noodles addSubview:nood];
    [self.view addSubview:_noodles];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ReceiptTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.title.text = _names[[self getIndex]][indexPath.row];
    cell.price.text= [NSString stringWithFormat:@"%@€", _prices[[self getIndex]][indexPath.row]];
    cell.image.image = [UIImage imageNamed:[NSString stringWithFormat:@"product_%d_%d", (int)[self getIndex] + 1, (int)indexPath.row + 1]];
    cell.price.layer.cornerRadius = cell.price.frame.size.height / 2.;
    [cell.price setNeedsDisplay];
    cell.whiteView.layer.shadowColor = [UIColor blackColor].CGColor;
    cell.whiteView.layer.shadowRadius = 3;
    cell.whiteView.layer.shadowOpacity = 0.05;
    return cell;
}

- (int) getIndex {

    int plan_number = [[[NSUserDefaults standardUserDefaults]
                        objectForKey:@"plan_number"] intValue];
    bool t1 =[[[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_1_set"] boolValue];
    bool t2 =[[[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_2_set"] boolValue];
    bool t3 =[[[NSUserDefaults standardUserDefaults] objectForKey:@"tumblr_3_set"] boolValue];
    if (plan_number == 1) {
        if (t3 && t1) {
            return 4;
        } else {
            return 1;
        }
    } else if (plan_number < 4) {
        return plan_number;
    } else {
        return arc4random() % 5;
    }
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return ((NSArray*)(_names[[self getIndex]])).count;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110;
}


- (IBAction)addPlan:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return false;
}
@end
