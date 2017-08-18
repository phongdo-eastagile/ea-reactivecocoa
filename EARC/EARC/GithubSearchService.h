//
//  GithubSearchService.h
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GithubSearchService : NSObject

- (void)searchGithubUserWithKeyword:(NSString*)keyword;

@end
