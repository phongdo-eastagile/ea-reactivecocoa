//
//  UISearchBar+RAC.h
//  EARC
//
//  Created by EastAgile42 on 8/17/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import <ReactiveObjC/ReactiveObjC.h>

@interface UISearchBar (RAC) <UISearchBarDelegate>

- (RACSignal *)rac_textSignal;

@end
