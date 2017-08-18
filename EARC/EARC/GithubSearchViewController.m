//
//  GithubSearchViewController.m
//  EARC
//
//  Created by EastAgile42 on 8/17/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "GithubSearchViewController.h"

@interface GithubSearchViewController ()

@end

@implementation GithubSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self bindViewModel];
}

- (void)bindViewModel {
    RAC(self, viewModel.searchText) = [[self githubSearchBar] rac_textSignal];
}

@end
