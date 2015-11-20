//
//  NetEasyHttpRequest.m
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import "NetEasyHttpRequest.h"
#import "HomePageParse.h"

#define NETEASY_HOSTURL @"http://open.163.com/"

#define NETEASY_SEARCHURL @"http://c.open.163.com/search/search.htm?query=&enc=%E2%84%A2#/search/course"


@implementation NetEasyHttpRequest

-(void)startNetEasy_HomePageHttpRequest{

    
    
    __weak ASIHTTPRequest *requestHomePage = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:NETEASY_HOSTURL]];
    //[requestExam setDelegate:self];
    // 默认为YES, 你可以设定它为NO来禁用gzip压缩
    [requestHomePage setAllowCompressedResponse:YES];
    [requestHomePage setValidatesSecureCertificate:NO];
    [requestHomePage setCompletionBlock:^{
        //打印主页数据
//        NSString *str = [[NSString alloc]initWithData:[requestHomePage responseData] encoding:NSUTF8StringEncoding];
        NSLog(@"主页的数据为:%@",[requestHomePage responseString]);
        
        HomePageParse *parser = [HomePageParse new];
       [parser parseHomePage:[requestHomePage responseData]];
    }];
    [requestHomePage setFailedBlock:^{
        NSLog(@"网易公开课hostPage请求错误：%s:error == %@",__FUNCTION__,requestHomePage.error);
    }];
    [requestHomePage startSynchronous];
}


-(void)startNetEasy_SearchClassHttpRequest:(NSString *)staticType{
    
}




//-(void)insertAction:(NSString *)cookievalue andCardID:(NSString *)cardIdStr andName:(NSString *)nameText
//{







//    NSString *st1=@"http://ecard.swust.edu.cn/web/";
//    NSString *st2=@"/1;jsessionid=";
//    NSString *st3=@"?p_p_id=querydetail&p_p_action=1&p_p_state=maximized&p_p_mode=view&p_p_col_id=column-3&p_p_col_pos=1&p_p_col_count=2&_querydetail_struts_action=%2Fext%2Fecardtransactionquerydetail_result";
//    NSString *urlStr1 = [NSString stringWithFormat:@"%@%@%@%@%@",st1,nameText,st2,cookievalue,st3 ];
//    
//    NSURL *url1 = [NSURL URLWithString:urlStr1];
//    
//    //发送请求
//    _requestForm = [ASIFormDataRequest requestWithURL:url1];
//    [_requestForm setUseCookiePersistence:YES];
//    NSString *serialType=@"1";
//    [_requestForm setPostValue:startDateString forKey:@"beginDate"];
//    [_requestForm setPostValue:endDateString forKey:@"endDate"];
//    [_requestForm setPostValue:cardIdStr forKey:@"cardId"];
//    [_requestForm setPostValue:serialType forKey:@"serialType"];
//    [_requestForm setPostValue:serialType forKey:@"serialType"];
//    [_requestForm setTimeOutSeconds:20];//设置超时
//    
//    
//    
//    [_requestForm setCompletionBlock:^{
//        [self requestLoginFinished:_requestForm];
//    }];
//    [_requestForm setFailedBlock:^{
//        [self requestFailed:_requestForm];
//    }];
//    //    [_requestForm setDelegate:self];
//    //    // 默认为YES, 你可以设定它为NO来禁用gzip压缩
//    //    [_requestForm setAllowCompressedResponse:YES];
//    //    [_requestForm setDidFailSelector:@selector(requestFailed:)];
//    //    [_requestForm setDidFinishSelector:@selector(requestLoginFinished:)];
//    [_requestForm startSynchronous];
//    
//    
//    
//}

@end
