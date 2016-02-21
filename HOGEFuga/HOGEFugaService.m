//
//  HOGEFugaService.m
//  HOGEFuga
//
//  Created by 清 貴幸 on 2015/12/19.
//  Copyright © 2015年 Hoge, inc. All rights reserved.
//

#import "HOGEFugaService.h"


@import AdSupport;

@implementation HOGEFugaService

+ (void)show {
    NSLog(@"hogehoge");
}

+ (NSString *)ADID {
    return [[ASIdentifierManager sharedManager] advertisingIdentifier].UUIDString;
}

@end
