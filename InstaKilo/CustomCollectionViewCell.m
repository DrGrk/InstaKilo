//
//  CustomCollectionViewCell.m
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "CustomCollectionViewCell.h"
#import "Photo.h"



@interface CustomCollectionViewCell ()

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;


@property (strong, nonatomic) NSString *subject;

@end


@implementation CustomCollectionViewCell




-(void)configureCollectionViewCellWithIndexPath:(Photo *)photo{

    
    self.titleLabel.text = photo.title;
    self.imageView.image = [UIImage imageNamed:photo.imageName];
}


@end
