//
//  NetEasyHttpRequest.h
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"

@interface NetEasyHttpRequest : NSObject




-(void)startNetEasy_HomePageHttpRequestBlock: (void(^) (NSMutableArray *homePageModelArray))completionBlock;


-(void)startNetEasy_ClassDetailWithURL:(NSString *)detailURL HttpRequestBlock: (void(^) (NSMutableArray *classDetailModelArray))completionBlock;

-(void)startNetEasy_SearchClassHttpRequest:(NSString *)staticType;

@end
