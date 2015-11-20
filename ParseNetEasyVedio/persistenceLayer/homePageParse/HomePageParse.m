//
//  HomePageParse.m
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import "HomePageParse.h"
#import "TFHpple.h"
#import "HomePageModel.h"

@implementation HomePageParse


-(NSMutableArray *)parseHomePage:(NSData *)htmlData{
    NSMutableArray *homepageData = [NSMutableArray array];
//    @try {
//        
//        TFHpple *htmlParser = [[TFHpple alloc]initWithHTMLData:htmlData];
//        NSArray *tableLable = [htmlParser searchWithXPathQuery:@"//table[@class='UIEditable']"];
//        
//        if (tableLable.count == 0) {
//            return 1;
//        }else{
//            EvaluateOnline *evaluateItem = [EvaluateOnline new];
//            EvaluateOnlineDAO *evaluateDao = [EvaluateOnlineDAO sharedManager];
//            
//            TFHppleElement *firstTable = [tableLable firstObject];
//            NSArray *tbodyLable = [firstTable searchWithXPathQuery:@"//tbody"];
//            TFHppleElement *firstTbody = [tbodyLable firstObject];
//            NSArray *trElements = [firstTbody searchWithXPathQuery:@"//tr"];
//            
//            for (TFHppleElement *curTR in trElements) {
//                NSArray *tdElements = [curTR searchWithXPathQuery:@"//td"];
//                int LOCATION = 0;
//                
//                for (TFHppleElement *curTd in tdElements) {
//                    LOCATION = LOCATION + 1;
//                    
//                    switch (LOCATION){
//                        case 3:
//                            evaluateItem.courseName = [curTd text];
//                            //NSLog(@"courseName == %@",evaluateItem.courseName);
//                            break;
//                        case 4:
//                            if([curTd haschildrenWithTagName:@"span"]){
//                                TFHppleElement *spanText = [curTd firstChild];
//                                evaluateItem.credit = [spanText text];
//                                //  NSLog(@"credit == %@",evaluateItem.credit);
//                            }
//                            break;
//                        case 5:
//                            if([curTd haschildrenWithTagName:@"span"]){
//                                TFHppleElement *spanText = [curTd firstChild];
//                                evaluateItem.SEWeek = [spanText text];
//                                // NSLog(@"SEWeek == %@",evaluateItem.SEWeek);
//                            }
//                            break;
//                        case 6:{
//                            
//                            NSArray *lockedLable = [curTd searchWithXPathQuery:@"//span[@class='stat locked']"];
//                            
//                            if (lockedLable.count > 0) {
//                                NSLog(@"当前课程被锁");
//                                //evaluateItem.evaluateURL = @"";
//                                break;
//                            }else{
//                                
//                                NSArray *child = [curTd childrenWithTagName:@"a"];
//                                
//                                TFHppleElement *spanText = [child objectAtIndex:0];
//                                evaluateItem.evaluateURL = [spanText objectForKey:@"href"];
//                                // NSLog(@"evaluateURL == %@",evaluateItem.evaluateURL);
//                            }
//                        }
//                            [evaluateDao insertCourseData:evaluateItem];
//                            break;
//                        default:
//                            break;
//                    }
//                    
//                }
//                //                [evaluateDao insertCourseData:evaluateItem];
//            }
//        }
//        return YES;
//        
//        
//    }
//    @catch (NSException *exception) {
//        NSLog(@"%s:__%@",__FUNCTION__,exception);
//        return NO;
//    }
//    @finally {
//        
//    }

    
    
    return homepageData;
}

@end
