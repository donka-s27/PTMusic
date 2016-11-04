//
//  Admobs.h
//  AllLeague
//
//  Created by Donka Stoyanov on 3/31/15.
//  Copyright (c) 2015 Fruity Solution. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import "Util.h"
#import "Common.h"
#import "Ads.h"
#import <GoogleMobileAds/GoogleMobileAds.h>

@interface Admobs : UIViewController{
    
    IBOutlet UIImageView *imageADs;
}
- (IBAction)onADs:(id)sender;

@end
