//
//  MBFDog.h
//  Man's Bert Friend
//
//  Created by Ryan Sandagon on 8/18/15.
//  Copyright (c) 2015 Ryan Sandagon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MBPerson : NSObject

@property (nonatomic) int age;
@property (nonatomic,strong) NSString *breed;
@property (nonatomic,strong) UIImage  *image;
@property (nonatomic,strong) NSString *name;

@end
