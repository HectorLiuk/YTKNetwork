//
//  LearnApi.m
//  YTKNetworkDemo
//
//  Created by Hector on 2016/11/25.
//  Copyright © 2016年 yuantiku.com. All rights reserved.
//

#import "LearnApi.h"

@implementation LearnApi
- (id)init{
    self = [super init];
    if (self) {
    }
    return self;
}

- (NSString *)requestUrl {
    return @"/mall/qualityCategoryShowNew";
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}


- (NSDictionary *)requestHeaderFieldValueDictionary {
    return @{@"Content-Type":@"application/x-www-form-urlencoded"};
}

- (NSString *)userId {
    return [[[self responseJSONObject] objectForKey:@"userId"] stringValue];
}
@end
