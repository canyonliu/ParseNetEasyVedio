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


-(NSMutableArray *)parseHomePage:(NSString *)htmlString{
    NSMutableArray *homepageData = [NSMutableArray array];
    
    
    NSString *utf8HtmlStr = [htmlString stringByReplacingOccurrencesOfString:@"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\">" withString:@"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">"];
    NSLog(@"2ssd == %@",utf8HtmlStr);
    NSData *htmlData = [utf8HtmlStr dataUsingEncoding:NSUTF8StringEncoding];
    @try {
    
        TFHpple *htmlParser = [[TFHpple alloc]initWithHTMLData:htmlData];
        NSArray *tableLable = [htmlParser searchWithXPathQuery:@"//div[@class='m-recommend']"];
        if (tableLable.count == 0) {
            return nil;
        }else{
            TFHppleElement *recommendDiv = [tableLable firstObject];
            NSArray *containerArea =[recommendDiv searchWithXPathQuery:@"//div[@class='g-container rarea']"];
            TFHppleElement *containerAreaDiv = [containerArea objectAtIndex:1];
            
            //获得小编推荐
            NSArray *editorcontent =[containerAreaDiv searchWithXPathQuery:@"//h2[@class='f-c3 f-fl']"];
            for (TFHppleElement *currentcontent in editorcontent)
                NSLog(@"credit == %@",[currentcontent text]);
            
            
            
            
            
            //获得课程信息
            NSArray *classcontent =[containerAreaDiv searchWithXPathQuery:@"//div[@class='g-cell1']"];
            for (TFHppleElement *currentcontent in classcontent){
                int INDEX = 0;
                
                HomePageModel *homePageItem = [[HomePageModel alloc]init];
                
//                
//                //other
                NSArray *othercontent =[currentcontent searchWithXPathQuery:@"//div[@class='shadow rel']"];
                for (TFHppleElement *currentcontent in othercontent){
                    NSArray *currImg = [currentcontent childrenWithTagName:@"img"];
                    for (TFHppleElement *currentcontent1 in currImg){
                        NSDictionary *dic = currentcontent1.attributes;
                        homePageItem.image = [dic objectForKey:@"src"];
                        homePageItem.className = [dic objectForKey:@"alt"];
//                        NSLog(@"image == %@",homePageItem.image);
//                        NSLog(@"className == %@",homePageItem.className);
                    }
                }
                //title
                NSArray *currA = [currentcontent childrenWithTagName:@"a"];
                TFHppleElement *currentcontent1  = [currA firstObject];
                NSDictionary *dic = currentcontent1.attributes;
                homePageItem.url = [dic objectForKey:@"href"];
//                NSLog(@"url == %@",homePageItem.url);
                
                

                
                //info
                NSArray *infoContent =[currentcontent searchWithXPathQuery:@"//p[@class='f-c9']"];
                TFHppleElement *currentcontent2  = [infoContent firstObject];
                    homePageItem.title = [currentcontent2 text];
//                    NSLog(@"title == %@",homePageItem.title);
               
                [homepageData addObject:homePageItem];
            }

        }
    
    
     return homepageData;
    }
    @catch (NSException *exception) {
        NSLog(@"%s:__%@",__FUNCTION__,exception);
        return nil;
    }
    @finally {
        
    }
}

@end
