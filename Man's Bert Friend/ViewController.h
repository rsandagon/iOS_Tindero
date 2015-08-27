//
//  ViewController.h
//  Man's Bert Friend
//
//  Created by Ryan Sandagon on 8/18/15.
//  Copyright (c) 2015 Ryan Sandagon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *personNameLabel;
@property (nonatomic,strong) NSMutableArray *pips;
@property (nonatomic) int currentIndex;


- (IBAction)rotatePerson:(id)sender;


@end

