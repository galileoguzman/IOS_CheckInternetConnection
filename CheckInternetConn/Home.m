//
//  ViewController.m
//  CheckInternetConn
//
//  Created by Galileo Guzman on 22/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshView:) name:@"refreshView" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refreshView:(NSNotification *) notification{
    UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"Error" message:@"We don't have an internet connection!!! " delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Accept", nil];
    
    [a show];
}

@end
