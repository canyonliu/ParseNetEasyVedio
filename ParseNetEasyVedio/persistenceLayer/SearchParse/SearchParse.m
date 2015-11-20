//
//  SearchParse.m
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import "SearchParse.h"
#import "TFHpple.h"
#import "SearchModel.h"
@implementation SearchParse


-(NSMutableArray *)parseSearch:(NSString *)htmlString{
    NSMutableArray *homepageData = [NSMutableArray array];
    NSString *utf8HtmlStr = [self replaceUnicode:htmlString];
    
//    NSString *utf8HtmlStr = [NSString stringWithCString:[htmlString UTF8String] encoding:NSUTF8StringEncoding];
    NSLog(@"sefdgdrhyrthrt === %@",utf8HtmlStr);
    
    NSData *htmlData = [utf8HtmlStr dataUsingEncoding:NSUTF8StringEncoding];
    @try {
        //又是css字符串
        
        TFHpple *htmlParser = [[TFHpple alloc]initWithHTMLData:htmlData];
        NSArray *tableLable = [htmlParser searchWithXPathQuery:@"//div[@class='m-recommend']"];
        if (tableLable.count == 0) {
            return nil;
        }else{
            
            
            
            
            
            
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






//转中文
-(NSString *)replaceUnicode:(NSString *)unicodeStr
{
    NSString *tempStr1 = [unicodeStr stringByReplacingOccurrencesOfString:@"\\u" withString:@"\\U"];
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];
    NSString *tempStr3 = [[@"\"" stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    NSString* returnStr = [NSPropertyListSerialization propertyListFromData:tempData
                                                                                 mutabilityOption:NSPropertyListImmutable
                                                                                           format:NULL
                                                                                 errorDescription:NULL];                            NSLog(@"%@",returnStr);
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n"withString:@"\n"];
}


@end
