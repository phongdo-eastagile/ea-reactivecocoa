//
//  GithubUser.h
//  EARC
//
//  Created by EastAgile42 on 8/18/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GithubUser : NSObject

- (instancetype)initWithDictionary:(NSDictionary*)userInfo;

@property (nonatomic, assign) int identifier;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *avatarURL;
@property (nonatomic, copy) NSString *displayName;
@property (nonatomic, copy) NSString *email;

@end
