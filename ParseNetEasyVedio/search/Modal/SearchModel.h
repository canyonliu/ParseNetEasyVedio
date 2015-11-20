//
//  SearchModel.h
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchModel : NSObject
@property (nonatomic, strong)NSString *image;

@property (nonatomic, strong)NSString *courseName;

@property (nonatomic, strong)NSString *school;

@property (nonatomic, strong)NSString *teacher;
/**
 *  集数
 */
@property (nonatomic, strong)NSString *episode;

@property (nonatomic, strong)NSString *type;

@property (nonatomic, strong)NSString *classInfo;

@property (nonatomic, strong)NSString *url;
@end
