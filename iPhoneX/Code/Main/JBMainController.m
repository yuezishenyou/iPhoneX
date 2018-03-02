//
//  JBMainController.m
//  iPhoneX
//
//  Created by maoziyue on 2018/3/2.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "JBMainController.h"
#import "JBMDetailController.h"

@interface JBMainController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tbView;


@end

@implementation JBMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"main";
    
    
    [self initSubViews];
    

}

- (void)initSubViews
{
    self.tbView.delegate = self;
    
    self.tbView.dataSource = self;
}





#pragma mark --delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = @"--abc--";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    JBMDetailController *vc = [[JBMDetailController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}










@end
