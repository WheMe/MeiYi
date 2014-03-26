//
//  MYClient.m
//  MeiYi
//
//  Created by ssj on 14-3-17.
//  Copyright (c) 2014年 Shangyi.Yang. All rights reserved.
//

#import "MYClient.h"

static MYClient *gSharedInstance = nil;
//static dispatch_once_t predicate;

@implementation MYClient

- (id)initWithBaseURL:(NSURL *)url{
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    [AFJSONRequestOperation addAcceptableContentTypes:[NSSet setWithObjects:@"text/html", nil]];
    return self;
}

+ (MYClient *)shareInstance{
    
    @synchronized(self)
    {
        if (gSharedInstance == nil) {
            gSharedInstance = [[MYClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://mapi.yinyuetai.com/video/channel/videos.json"]];
        }
        
    }
    return gSharedInstance;
}

- (void)getPath:(NSString *)path parameters:(NSDictionary *)parameters success:(void (^)(id, id))success failure:(void (^)(id, NSError *))failure{
    [super getPath:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (![responseObject isKindOfClass:[NSDictionary class]] && ![responseObject isKindOfClass:[NSArray class]]) {//json 格式错误
            NSError *error = [NSError errorWithDomain:@"json数据格式错误" code:10001 userInfo:[NSDictionary dictionaryWithObject:responseObject forKey:@"response"]];
            failure(operation,error);
        }
        else {
            
            success(operation,responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(operation,error);
    }];
}

@end
