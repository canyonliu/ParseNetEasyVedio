//
//  SearchParse.h
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchParse : NSObject

-(NSMutableArray *)parseSearch:(NSString *)htmlString;

@end
