//
//  GithubUserTests.m
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GithubUser.h"

@interface GithubUserTests : XCTestCase {
    NSDictionary *githubUserDictionary;
}

@end

@implementation GithubUserTests

- (void)setUp {
    githubUserDictionary = @{
                             @"login": @"phongdoduy",
                             @"id": @25846528,
                             @"avatar_url": @"https://avatars3.githubusercontent.com/u/25846528?v=4",
                             @"name": @"Do Duy Phong",
                             @"email": @"phong.doduy1504@gmail.com"
                             };
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testThatGithubUserEntityIsCreatedCorrectlyWhenParsingFromDictionaryValue {
    GithubUser *githubUser = [[GithubUser alloc] initWithDictionary:githubUserDictionary];
    XCTAssertEqual(githubUser.identifier, 25846528);
    XCTAssertEqual(githubUser.userName, @"phongdoduy");
    XCTAssertEqual(githubUser.avatarURL, @"https://avatars3.githubusercontent.com/u/25846528?v=4");
    XCTAssertEqual(githubUser.displayName, @"Do Duy Phong");
    XCTAssertEqual(githubUser.email, @"phong.doduy1504@gmail.com");
}

@end
