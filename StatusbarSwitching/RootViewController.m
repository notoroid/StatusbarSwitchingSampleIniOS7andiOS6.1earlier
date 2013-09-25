//
//  RootViewController.m
//  StatusbarSwitching
//
//  Created by 能登 要 on 2013/09/25.
//  Copyright (c) 2013年 Kaname Noto. All rights reserved.
//

#import "RootViewController.h"

@interface SwitcingSegue : UIStoryboardSegue

@end

@implementation SwitcingSegue

- (void)perform
{
    UIViewController* sourceViewController = self.sourceViewController;
    UIViewController* destinationViewController = self.destinationViewController;
    
    [sourceViewController addChildViewController:destinationViewController];
    
    UIView* subView = destinationViewController.view;
    subView.frame = CGRectMake(.0f,.0f, sourceViewController.view.frame.size.width, sourceViewController.view.frame.size.height);
    [sourceViewController.view addSubview:subView];
}

@end

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        [self performSegueWithIdentifier:@"iOS6Segue" sender:self];
    }else{
        [self performSegueWithIdentifier:@"iOS7Segue" sender:self];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
