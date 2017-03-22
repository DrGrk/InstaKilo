//
//  Photo.m
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (instancetype)initWithTitle:(NSString *)title ImageName:(NSString *)imageName Subject:(NSString *)subject
{
    self = [super init];
    if (self) {
        _title = title;
        _imageName = imageName;
        _subject = subject;
    }
    return self;
}

@end
