//
//  ViewController.m
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"

#import "Photo.h"
#import "PhotoAlbum.h"

//CREATE A SET THAT HOLDS STRINGS FOR ALL THE DIFFERENT SUBJECTS
//LOWERCASE ALL THE STRINGS BEFORE THERE ENTERED INTO THE SET
//SET THE NUMBER OF SECTIONS TO THE NUMBER OF ITEMS IN THE SET
//SET THE CONTENT OF EACH SECTION TO THE SUBJECT OF EACH ITEM


@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) PhotoAlbum *photoAlbum;
@property (nonatomic, strong) NSArray *photoAlbumSections;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _images = [[NSArray alloc] init];
    _photoAlbum = [[PhotoAlbum alloc] init];
    _photoAlbumSections = [[NSArray alloc] init];
    
    Photo *photo1 = [[Photo alloc] initWithTitle:@"Big Dog" ImageName:@"image1" Subject:@"Misc"];
    [self.photoAlbum.album addObject:photo1];
    Photo *photo2 = [[Photo alloc] initWithTitle:@"Little Cat" ImageName:@"image2" Subject:@"Cat"];
    [self.photoAlbum.album addObject:photo2];
    Photo *photo3 = [[Photo alloc] initWithTitle:@"Cliff Hanger" ImageName:@"image3" Subject:@"Misc"];
    [self.photoAlbum.album addObject:photo3];
    Photo *photo4 = [[Photo alloc] initWithTitle:@"Big Cat" ImageName:@"image4" Subject:@"Cat"];
    [self.photoAlbum.album addObject:photo4];
    Photo *photo5 = [[Photo alloc] initWithTitle:@"Medium Cat" ImageName:@"image5" Subject:@"Cat"];
    [self.photoAlbum.album addObject:photo5];
    Photo *photo6 = [[Photo alloc] initWithTitle:@"Rainbow Lime" ImageName:@"image6" Subject:@"Misc"];
    [self.photoAlbum.album addObject:photo6];
    Photo *photo7 = [[Photo alloc] initWithTitle:@"Panda" ImageName:@"image7" Subject:@"Bear"];
    [self.photoAlbum.album addObject:photo7];
    Photo *photo8 = [[Photo alloc] initWithTitle:@"Brown Bear" ImageName:@"image8" Subject:@"Bear"];
    [self.photoAlbum.album addObject:photo8];
    Photo *photo9 = [[Photo alloc] initWithTitle:@"What a Beach" ImageName:@"image9" Subject:@"Misc"];
    [self.photoAlbum.album addObject:photo9];
    Photo *photo10 = [[Photo alloc] initWithTitle:@"Fingers" ImageName:@"image10" Subject:@"Misc"];
    [self.photoAlbum.album addObject:photo10];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    NSInteger numberOfSections = [self.photoAlbum numberOfSectionsInCollectionView];
    return numberOfSections;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    self.photoAlbumSections = [self.photoAlbum determineSections];
    NSArray <Photo *> *photoSection = self.photoAlbumSections[section];
    return photoSection.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    Photo *photo = self.photoAlbumSections[section][row];
    
    /*Photo *photo = self.photoAlbum.album[index];
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    */
    
    [cell configureCollectionViewCellWithIndexPath:photo];
    return cell;
}



@end
