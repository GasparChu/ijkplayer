//
//  DCMediaTool.h
//  IJKMediaFramework
//
//  Created by Yang Jiangang on 2018/11/26.
//  Copyright © 2018 bilibili. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DCMediaTool : NSObject

+ (DCMediaTool *)sharedInstance;

+ (void)gifToMp4:(NSString *)inputStr output:(NSString *)outputStr;

@end

NS_ASSUME_NONNULL_END
