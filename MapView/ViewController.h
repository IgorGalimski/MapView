//
//  ViewController.h
//  MapView
//
//  Created by Igor Galimski on 7/3/20.
//  Copyright © 2020 Igor Galimski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapKit;
- (IBAction)direction:(id)sender;
- (IBAction)standart:(id)sender;
- (IBAction)satellite:(id)sender;
- (IBAction)hybrid:(id)sender;
- (IBAction)location:(id)sender;

@end

