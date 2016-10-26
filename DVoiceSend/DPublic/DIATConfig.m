//
//  DIATConfig.m
//  DVoiceSend
//
//  Created by DUCHENGWEN on 2016/10/26.
//  Copyright © 2016年 DCW. All rights reserved.
//

#define PUTONGHUA   @"mandarin"
#define YUEYU       @"cantonese"
#define HENANHUA    @"henanese"
#define ENGLISH     @"en_us"
#define CHINESE     @"zh_cn";

#import "DIATConfig.h"



@implementation DIATConfig

-(id)init {
    self  = [super init];
    if (self) {
        [self defaultSetting];
        return  self;
    }
    return nil;
}


+(DIATConfig *)sharedInstance {
    static DIATConfig  * instance = nil;
    static dispatch_once_t predict;
    dispatch_once(&predict, ^{
        instance = [[DIATConfig alloc] init];
    });
    return instance;
}


-(void)defaultSetting {
    _speechTimeout = @"30000";
    _vadEos = @"3000";
    _vadBos = @"3000";
    _dot = @"0";
    _sampleRate = @"16000";
    _language = CHINESE;
    _accent = PUTONGHUA;
    _haveView = NO;//默认是不dai界面的
    _accentNickName = [[NSArray alloc] initWithObjects:@"粤语",@"普通话",@"河南话",@"英文", nil];
    
}


+(NSString *)mandarin {
    return PUTONGHUA;
}
+(NSString *)cantonese {
    return YUEYU;
}
+(NSString *)henanese {
    return HENANHUA;
}
+(NSString *)chinese {
    return CHINESE;
}
+(NSString *)english {
    return ENGLISH;
}

+(NSString *)lowSampleRate {
    return @"8000";
}

+(NSString *)highSampleRate {
    return @"16000";
}

+(NSString *)isDot {
    return @"1";
}

+(NSString *)noDot {
    return @"0";
}




@end