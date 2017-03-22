//
//  PhotoAlbum.h
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Photo;
@class PhotoAlbumSection;

@interface PhotoAlbum : NSObject

@property (nonatomic, strong) NSMutableArray <Photo *> *album;
@property (nonatomic, strong) NSArray <NSString *> *sections;
@property (nonatomic, strong) NSMutableArray <NSArray *> *photoAlbumSections;

-(NSInteger)numberOfSectionsInCollectionView;
-(NSArray *)determineSections;

@end
