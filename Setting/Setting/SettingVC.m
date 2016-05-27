//
//  SettingVC.m
//  Setting
//
//  Created by wyh on 16/5/25.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "SettingVC.h"
#import "SettingUtils.h"

typedef NS_ENUM(NSInteger, Section) {
    Contact = 0,
    UseProtocol
};

@interface SettingVC ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *appVersionLabel;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *sectionData;

@end

@implementation SettingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _sectionData = @[
                     @[
                         @{
                             @"imageName" : @"Setting_TelePhone",
                             @"text" : @"400-888-9999"
                             },
                         
                         @{
                             @"imageName" : @"Setting_Email",
                             @"text" : @"support@zuiio.com"
                             }
                         ],
                     
                     @[
                         @{
                             @"imageName" : @"",
                             @"text" : @"使用条款"
                             }
                         ]
                     ];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.appVersionLabel.text = [NSString stringWithFormat:@"%@ V%@",[SettingUtils appName], [SettingUtils appVersion]];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case Contact:
            return 2;
            
        case UseProtocol:
            return 1;
            
        default:
            return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *cellData = self.sectionData[indexPath.section][indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SettingVCCell"];
    cell.imageView.image = [UIImage imageNamed:cellData[@"imageName"]];
    cell.textLabel.text = cellData[@"text"];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case Contact:
            return @"联系我们";
            
        case UseProtocol:
            return @"";
            
        default:
            return @"";
    }
}

# pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 18;
}


@end
