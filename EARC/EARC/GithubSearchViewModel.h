//
//  GithubSearchViewModel.h
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveObjC/ReactiveObjC.h>
#import "GithubSearchService.h"

@interface GithubSearchViewModel : NSObject

@property (nonatomic, readwrite) NSString *searchText;
@property (nonatomic, readonly) GithubSearchService *service;

@end
