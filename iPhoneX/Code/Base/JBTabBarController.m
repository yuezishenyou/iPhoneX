//
//  JBTabBarController.m
//  iPhoneX
//
//  Created by maoziyue on 2018/3/2.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "JBTabBarController.h"
#import "JBNavigationController.h"
#import "JBMainController.h"
#import "JBOwnController.h"
#import "JBShopController.h"


@interface JBTabBarController ()

@end

@implementation JBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    [[UITabBar appearance] setTintColor:[UIColor darkGrayColor]];

    [self addChildController:[JBMainController new] navTitle:@"main" barTitle:@"主页" image:@"tb_0" selectedImage:@"tb_0_selected"];
    [self addChildController:[JBShopController new] navTitle:@"shop" barTitle:@"购物" image:@"tb_1" selectedImage:@"tb_1_selected"];
    [self addChildController:[JBOwnController new] navTitle:@"own" barTitle:@"我的" image:@"tb_2" selectedImage:@"tb_2_selected"];
    
}

- (void)addChildController:(UIViewController *)controller navTitle:(NSString *)navTitle barTitle:(NSString *)barTitle image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    JBNavigationController *navc = [[JBNavigationController alloc]initWithRootViewController:controller];
    
    controller.navigationItem.title = navTitle;
    
    controller.tabBarItem.title = barTitle;
    
    controller.tabBarItem.image = [[UIImage imageNamed:image]
                                   imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]
                                           imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [self addChildViewController:navc];
}










@end
