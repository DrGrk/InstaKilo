//
//  PhotoAlbumSection.m
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "PhotoAlbumSection.h"

@implementation PhotoAlbumSection

- (instancetype)init
{
    self = [super init];
    if (self) {
        _collectionOfPhotos = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
