//
//  SearchViewController.m
//  EARC
//
//  Created by EastAgile42 on 8/17/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

#pragma mark - View life-cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self bindViewModel];
}

#pragma mark - Data binding

- (void)bindViewModel {
    RAC(self.viewModel, searchText) = [self.searchBar rac_textSignal];
}

@end
