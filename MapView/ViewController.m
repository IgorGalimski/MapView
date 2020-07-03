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

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 34;
    location.longitude = -118;
    
    region.span = span;
    region.center = location;
    
    [self.mapKit setRegion:region animated:YES];
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
