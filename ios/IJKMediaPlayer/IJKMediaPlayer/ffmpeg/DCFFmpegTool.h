//
//  DCFFmpegTool.h
//  DCFFmpeg
//
//  Created by Yang Jiangang on 2018/11/27.
//  Copyright © 2018 Yang Jiangang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCFFmpegTool : NSObject

+ (BOOL)ffmpeg:(NSString *)str progress:(void(^)(float progress,int result))progress;

@end
