//
//  ViewController.m
//  MapView
//
//  Created by Igor Galimski on 7/3/20.
//  Copyright © 2020 Igor Galimski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)location:(id)sender {
}

- (IBAction)hybrid:(id)sender
{
    self.mapKit.mapType = MKMapTypeHybrid;
}

- (IBAction)satellite:(id)sender
{
    self.mapKit.mapType = MKMapTypeSatellite;
}

- (IBAction)standart:(id)sender
{
    self.mapKit.mapType = MKMapTypeStandard;
}

- (IBAction)direction:(id)sender {
}
@end
