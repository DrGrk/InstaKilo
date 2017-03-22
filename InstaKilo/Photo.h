//
//  Photo.h
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subject;


- (instancetype)initWithTitle:(NSString *)title ImageName:(NSString *)imageName Subject:(NSString *)subject;

@end
