//
//  ClassDetailModel.h
//  ParseNetEasyVedio
//
//  Created by WayneLiu on 15/11/20.
//  Copyright (c) 2015年 WayneLiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassDetailModel : NSObject
@property (nonatomic, strong)NSString *image;

@property (nonatomic, strong)NSString *className;

@property (nonatomic, strong)NSString *teacher;
@property (nonatomic, strong)NSString *teacherValue;

@property (nonatomic, strong)NSString *language;
@property (nonatomic, strong)NSString *languageValue;

@property (nonatomic, strong)NSString *type;
@property (nonatomic, strong)NSString *typeValue;

@property (nonatomic, strong)NSString *classInfo;
@property (nonatomic, strong)NSString *classInfoValue;

@property (nonatomic, strong)NSString *vedioUrl;

@property (nonatomic, strong)NSString *classUrl;


@end
