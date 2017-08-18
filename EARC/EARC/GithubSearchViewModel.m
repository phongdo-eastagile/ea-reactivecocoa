//
//  GithubSearchViewModel.m
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "GithubSearchViewModel.h"

@interface GithubSearchViewModel ()

@property (nonatomic, readwrite) GithubSearchService *service;

@end

@implementation GithubSearchViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.service = [[GithubSearchService alloc] init];
        [self initRAC];
    }
    return self;
}

- (void)initRAC {
    @weakify(self);
    [[RACObserve(self, searchText)
     distinctUntilChanged]
     subscribeNext:^(NSString *text) {
         @strongify(self);
         [self.service searchGithubUserWithKeyword:text];
     }];
}

@end
