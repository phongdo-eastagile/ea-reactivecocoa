//
//  UISearchBar+RAC.h
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <objc/runtime.h>
#import <UIKit/UIKit.h>
#import <ReactiveObjC/ReactiveObjC.h>

@interface UISearchBar (RAC) <UISearchBarDelegate>

- (RACSignal*)rac_textSignal;

@end
