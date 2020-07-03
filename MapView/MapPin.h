//
//  MapPin.h
//  MapView
//
//  Created by Igor Galimski on 7/3/20.
//  Copyright © 2020 Igor Galimski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject <MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
}

@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

@end

NS_ASSUME_NONNULL_END
