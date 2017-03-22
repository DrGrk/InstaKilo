//
//  EditViewController.m
//  InstaKilo
//
//  Created by David Guichon on 2017-03-22.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setTheDelegate:(ViewController *)delegate{
    self.delegate = delegate;
}


@end
