//
//  ViewController.m
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/15.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import "ViewController.h"
#import "HomePageParse.h"
#import "NetEasyHttpRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NetEasyHttpRequest *request = [NetEasyHttpRequest new];
//    [request startNetEasy_HomePageHttpRequest];
    [request startNetEasy_HomePageHttpRequestBlock:^(NSMutableArray *homePageModelArray) {
        NSLog(@"返回的数据");
    }];
    
}


@end
