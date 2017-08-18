//
//  GithubSearchViewModelTests.m
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "GithubSearchViewModel.h"

@interface GithubSearchViewModelTests : XCTestCase {
    GithubSearchViewModel *viewModel;
}

@end

@implementation GithubSearchViewModelTests

- (void)setUp {
    [super setUp];
    
    viewModel = [[GithubSearchViewModel alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testThatGithubServiceShouldBeCreatedCorrectlyWhenInitializedGithubSearchViewModel {
    XCTAssertNotNil(viewModel.service);
}

- (void)testThatGithubServiceSearchMethodShouldBeCalledWhenSearchTextDidChange {
    NSString *searchText = @"phong";
    id serviceMock = OCMPartialMock(viewModel.service);
    viewModel.searchText = searchText;
    OCMVerify([serviceMock searchGithubUserWithKeyword:searchText]);
}

@end
