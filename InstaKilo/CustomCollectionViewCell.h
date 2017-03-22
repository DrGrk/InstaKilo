//
//  CustomCollectionViewCell.h
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photo;


@interface CustomCollectionViewCell : UICollectionViewCell

-(void)configureCollectionViewCellWithIndexPath:(Photo *)photo;

@end
