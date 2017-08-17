//
//  SearchViewController.h
//  EARC
//
//  Created by EastAgile42 on 8/17/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchViewModel.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "UISearchBar+RAC.h"

@interface SearchViewController : UIViewController

@property (nonatomic, weak) IBOutlet SearchViewModel *viewModel;
@property (nonatomic, weak) IBOutlet UISearchBar *searchBar;

@end
