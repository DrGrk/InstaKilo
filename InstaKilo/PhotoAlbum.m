//
//  PhotoAlbum.m
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "PhotoAlbum.h"
#import "Photo.h"
#import "PhotoAlbumSection.h"

//CREATE METHODS THAT HOLDS THE PHOTO OBJECTS AND SUBJECTS

@implementation PhotoAlbum

- (instancetype)init
{
    self = [super init];
    if (self) {
        _album = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSInteger)numberOfSectionsInCollectionView{
    NSSet <NSString *>*sectionsFilter = [[NSSet alloc] init];
    for (Photo *photo in self.album) {
        sectionsFilter = [sectionsFilter setByAddingObject:photo.subject];
    }
    self.sections = [sectionsFilter allObjects];
    return self.sections.count;
}

-(NSArray *)determineSections{
    self.photoAlbumSections = [[NSMutableArray alloc] init];
    for (NSString *section in self.sections) {
        PhotoAlbumSection *newSection = [[PhotoAlbumSection alloc] init];
        for (Photo *photo in self.album) {
            if (photo.subject == section){
                [newSection.collectionOfPhotos addObject:photo];
            }
        }
        if (newSection.collectionOfPhotos.count !=0){
            [self.photoAlbumSections addObject:newSection.collectionOfPhotos];
        }
    }
    return self.photoAlbumSections;
}

/*    NSSet *sectionsFilter = [[NSSet alloc] init];
    for (Photo *photo in self.album) {
        NSString *subjectCorrected = [photo.subject lowercaseString];
        [sectionsFilter setByAddingObject:subjectCorrected];
    }
    NSArray *sections = [sectionsFilter allObjects];
    return sections;
}*/

@end
