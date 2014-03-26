//
//  MYClient.h
//  MeiYi
//
//  Created by ssj on 14-3-17.
//  Copyright (c) 2014年 Shangyi.Yang. All rights reserved.
//

#import "AFHTTPClient.h"
@interface MYClient : AFHTTPClient
+ (MYClient *)shareInstance;
- (void)getPath:(NSString *)path
     parameters:(NSDictionary *)parameters
        success:(void (^)(id content, id responseObject))success
        failure:(void (^)(id content, NSError *error))failure;
@end
