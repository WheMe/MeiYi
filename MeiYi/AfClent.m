//
//  AfClent.m
//  MeiYi
//
//  Created by ssj on 14-3-19.
//  Copyright (c) 2014年 Shangyi.Yang. All rights reserved.
//

#import "AfClent.h"

@implementation AfClent

- (void)getDataFromUrl:(NSString *)url{
    NSString *gUrl = @"http://www.weather.com.cn/data/sk/101010100.html";
    NSURL *mUrl = [NSURL URLWithString:gUrl];
    NSURLRequest * request = [NSURLRequest requestWithURL:mUrl];
    [AFJSONRequestOperation addAcceptableContentTypes:[NSSet setWithObjects:@"text/html", nil]];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSLog(@"1111%@",JSON);
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
        NSLog(@"2222%@",JSON);
    }];
    [operation start];
}
@end
