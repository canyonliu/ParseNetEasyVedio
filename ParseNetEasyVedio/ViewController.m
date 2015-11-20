//
//  ViewController.m
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/15.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import "ViewController.h"
//#import "HomePageParse.h"
#import "NetEasyHttpRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NetEasyHttpRequest *request = [NetEasyHttpRequest new];

//    [request startNetEasy_HomePageHttpRequestBlock:^(NSMutableArray *homePageModelArray) {
//        NSLog(@"返回的数据 == %@",homePageModelArray);
//    }];
    
    [request startNetEasy_ClassDetailWithURL:@"http://open.163.com/movie/2015/11/M/Q/MB6L130A5_MB6L248MQ.html" HttpRequestBlock:^(NSMutableArray *classDetailModelArray) {
         NSLog(@"返回的数据 == %@",classDetailModelArray);
    }];
    
}


@end
