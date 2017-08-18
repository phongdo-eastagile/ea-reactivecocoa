//
//  GithubSearchViewController.h
//  EARC
//
//  Created by EastAgile42 on 8/17/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UISearchBar+RAC.h"
#import "GithubSearchViewModel.h"

@interface GithubSearchViewController : UIViewController

@property (nonatomic, weak) IBOutlet GithubSearchViewModel *viewModel;
@property (nonatomic, weak) IBOutlet UISearchBar *githubSearchBar;

@end
