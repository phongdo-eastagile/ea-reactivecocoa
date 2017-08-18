//
//  GithubUser.m
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "GithubUser.h"

@implementation GithubUser

- (instancetype)initWithDictionary:(NSDictionary *)userInfo {
    self = [super init];
    if (self) {
        self.identifier = [userInfo[@"id"] intValue];
        self.userName = [[NSString alloc] initWithString:userInfo[@"login"]];
        self.avatarURL = [[NSString alloc] initWithString:userInfo[@"avatar_url"]];
        self.displayName = [[NSString alloc] initWithString:userInfo[@"name"]];
        self.email = [[NSString alloc] initWithString:userInfo[@"email"]];
    }
    return self;
}

@end
