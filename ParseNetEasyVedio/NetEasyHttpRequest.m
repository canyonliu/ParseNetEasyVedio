//
//  NetEasyHttpRequest.m
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import "NetEasyHttpRequest.h"

@implementation NetEasyHttpRequest

//-(void)insertAction:(NSString *)cookievalue andCardID:(NSString *)cardIdStr andName:(NSString *)nameText
//{
/**
 *  __weak ASIHTTPRequest *requestExam = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:URL_Dean_Exam]];
 //[requestExam setDelegate:self];
 // 默认为YES, 你可以设定它为NO来禁用gzip压缩
 [requestExam setAllowCompressedResponse:YES];
 [requestExam setValidatesSecureCertificate:NO];
 [requestExam setCompletionBlock:^{
 ExamParser *parser = [ExamParser new];
 [parser parserExam:[requestExam responseData]];
 }];
 [requestExam setFailedBlock:^{
 NSLog(@"考试请求错误：%s:error == %@",__FUNCTION__,requestExam.error);
 }];
 [requestExam startSynchronous];
 */







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
