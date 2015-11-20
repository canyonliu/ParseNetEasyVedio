//
//  ClassDetailParse.m
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import "ClassDetailParse.h"
#import "ClassDetailModel.h"
#import "TFHpple.h"

@implementation ClassDetailParse

-(NSMutableArray *)parseClassDetail:(NSString *)htmlString{
    NSMutableArray *classDetailData = [NSMutableArray array];
//    <meta http-equiv="content-type" content="text/html; charset=GBK"/>
     NSString *utf8HtmlStr = [htmlString stringByReplacingOccurrencesOfString:@"charset=GBK" withString:@"charset=utf-8"];
    
//    NSString *utf8HtmlStr = [htmlString stringByReplacingOccurrencesOfString:@"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\"/>" withString:@"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>"];
    NSLog(@"2ssd == %@",utf8HtmlStr);
    NSData *htmlData = [utf8HtmlStr dataUsingEncoding:NSUTF8StringEncoding];
//    @try {
    
        TFHpple *htmlParser = [[TFHpple alloc]initWithHTMLData:htmlData];
//    视频链接先空出来
//        NSArray *tableLable1 = [htmlParser searchWithXPathQuery:@"//div[@id='j-flashArea']"];
//        TFHppleElement *recommendDiv2 = [tableLable1 objectAtIndex:0];
//    NSLog(@"3frdsfgs == %@",recommendDiv2.raw);
//    

    
    
    
    
    
    
    
    
        NSArray *tableLable = [htmlParser searchWithXPathQuery:@"//div[@class='u-ptl-c f-c6']"];
        if (tableLable.count == 0) {
            return nil;
        }else{
            ClassDetailModel *classDetailItem = [[ClassDetailModel alloc]init];
            
            
            TFHppleElement *recommendDiv = [tableLable firstObject];
            
            //href
            NSArray *currA = [recommendDiv childrenWithTagName:@"a"];
            TFHppleElement *currentcontent1  = [currA firstObject];
            NSDictionary *dic = currentcontent1.attributes;
            classDetailItem.classUrl = [dic objectForKey:@"href"];
//            NSLog(@"=====%@",[dic objectForKey:@"href"]);
            
            //img
            NSArray *currImg = [currentcontent1 childrenWithTagName:@"img"];
            TFHppleElement *currentcontent2  = [currImg firstObject];
            NSDictionary *dicimg = currentcontent2.attributes;
            classDetailItem.image = [dicimg objectForKey:@"src"];
            //            NSLog(@"=====%@",[dicimg objectForKey:@"src"]);
            
            //classname
            TFHppleElement *currentcontent3  = [currA objectAtIndex:1];
            NSArray *infoContent =[currentcontent3 searchWithXPathQuery:@"//h3[@class='f-c3']"];
            TFHppleElement *currentcontent4  = [infoContent firstObject];
            classDetailItem.className = [currentcontent4 text];
            NSLog(@"=====%@",[currentcontent4 text]);
            
            
            NSArray *currP = [recommendDiv childrenWithTagName:@"p"];
            NSArray *spanContent;
            for (TFHppleElement *currentcontent5 in currP){
                int index = 0;
                    spanContent =[currentcontent5 searchWithXPathQuery:@"//span[@class='f-c9']"];
                    currentcontent4  = [spanContent firstObject];
                    if (index ==0) {
                        classDetailItem.teacherValue = [currentcontent4 text];
                        classDetailItem.teacher = [currentcontent5 text];
//                        NSLog(@"=====%@",classDetailItem.teacherValue);
//                        //deatil
//                        NSLog(@"=====%@",classDetailItem.teacher );
                    }else if (index == 1){
                        classDetailItem.languageValue = [currentcontent4 text];
                        classDetailItem.language = [currentcontent5 text];
//                        NSLog(@"=====%@", classDetailItem.languageValue);
//                        //deatil
//                        NSLog(@"=====%@",classDetailItem.language);
                        
                    }else if (index == 2){
                        classDetailItem.typeValue = [currentcontent4 text];
                        classDetailItem.type = [currentcontent5 text];
//                        NSLog(@"=====%@",classDetailItem.typeValue);
//                        //deatil
//                        NSLog(@"=====%@", classDetailItem.type);
                        
                    }else if (index == 3){
                        classDetailItem.classInfoValue = [currentcontent4 text];
                        classDetailItem.classInfo = [currentcontent5 text];
//                        NSLog(@"=====%@",classDetailItem.classInfoValue);
//                        //deatil
//                        NSLog(@"=====%@",classDetailItem.classInfo);
                    }
                index ++;
                
                
            }
            
            
            
            
                
                [classDetailData addObject:classDetailItem];
            }


        return classDetailData;
//    }
//    @catch (NSException *exception) {
//        NSLog(@"%s:__%@",__FUNCTION__,exception);
//        return nil;
//    }
//    @finally {
//        
//    }
}


@end
