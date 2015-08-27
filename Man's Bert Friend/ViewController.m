//
//  ViewController.m
//  Man's Bert Friend
//
//  Created by Ryan Sandagon on 8/18/15.
//  Copyright (c) 2015 Ryan Sandagon. All rights reserved.
//

#import "ViewController.h"
#import "MBPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MBPerson *person1 = [[MBPerson alloc] init];
    person1.name = @"Yaya Dub";
    person1.breed = @"Mayaman";
    person1.age = 48;
    person1.image = [UIImage imageNamed:@"aimee.png"];
    
    MBPerson *person2 = [[MBPerson alloc] init];
    person2.name = @"Nyoy Volante";
    person2.breed = @"Singer";
    person2.age = 18;
    person2.image = [UIImage imageNamed:@"arnel.png"];
    
    MBPerson *person3 = [[MBPerson alloc] init];
    person3.name = @"Expat Princess";
    person3.breed = @"Boss";
    person3.age = 59;
    person3.image = [UIImage imageNamed:@"kristela.png"];
    
    self.pips = [[NSMutableArray alloc]init];
    [self.pips addObject:person1];
    [self.pips addObject:person2];
    [self.pips addObject:person3];
    
    self.currentIndex = 0;
    
    [self displayPerson];
    
}

- (void)displayPerson{
    MBPerson *nextPerson = [self.pips objectAtIndex:self.currentIndex];
    self.myImageView.image = nextPerson.image;
    self.personNameLabel.text = nextPerson.name;
    
    [UIView transitionWithView:self.myImageView duration:1 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
        MBPerson *nextPerson = [self.pips objectAtIndex:self.currentIndex];
        self.myImageView.image = nextPerson.image;
        self.personNameLabel.text = nextPerson.name;
    } completion:^(BOOL finished) {
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rotatePerson:(id)sender {
    int pipsCount = [self.pips count];
    self.currentIndex++;
    
    if (self.currentIndex >= pipsCount) {
        self.currentIndex = 0;
    }
    [self displayPerson];
}
@end
