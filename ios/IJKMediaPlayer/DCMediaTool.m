//
//  DCMediaTool.m
//  IJKMediaFramework
//
//  Created by Yang Jiangang on 2018/11/26.
//  Copyright © 2018 bilibili. All rights reserved.
//

#import "DCMediaTool.h"

extern int ffmpeg_main(int argc, char * argv[]);

@implementation DCMediaTool

+ (DCMediaTool *)sharedInstance
{
    static DCMediaTool *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DCMediaTool alloc] init];
    });
    return instance;
}

+ (void)gifToMp4:(NSString *)inputStr output:(NSString *)outputStr
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        char *input = (char *)[inputStr UTF8String];
        char *output = (char *)[outputStr UTF8String];
        char* a[] = {
            "ffmpeg",
            "-f",
            "gif",
            "-i",
            input,
            output
        };
        ffmpeg_main(sizeof(a)/sizeof(*a), a);
    });
}

@end
