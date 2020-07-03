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
    
    locationManager.delegate = self;
    self.mapKit.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
 
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 34.024212;
    location.longitude = -118.496475;
    
    region.span = span;
    region.center = location;
    
    [self.mapKit setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    
    [self.mapKit addAnnotation:ann];
}


- (IBAction)location:(id)sender
{
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    
    [locationManager startUpdatingLocation];
    
    self.mapKit.showsUserLocation = YES;
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

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = userLocation.coordinate.latitude;
    location.longitude = userLocation.coordinate.longitude;
    
    region.span = span;
    region.center = location;
    
    [self.mapKit setRegion:region animated:YES];
}

@end
