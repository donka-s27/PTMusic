//
//  Admobs.m
//  AllLeague
//
//  Created by Donka Stoyanov on 3/31/15.
//  Copyright (c) 2015 Fruity Solution. All rights reserved.
//

#import "Admobs.h"
#import "ModelManager.h"
#import "Ads.h"
#import "AsyncImageView.h"

@interface Admobs () {
    Ads *ad;
}

@end

@implementation Admobs

- (void)viewDidLoad {
    
    [super viewDidLoad];
    ad = [[Ads alloc] init];
    
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.frame];
//    bg.image = [UIImage imageNamed:@"bg_black.jpg"];
//    [self.view addSubview:bg];
    [self getData];
  
    // Do any additional setup after loading the view from its nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)loadAbmob {

        if (!imageADs) {
            viewHeight = SCREEN_HEIGHT_PORTRAIT;
            imageADs = [[UIImageView alloc]
                            initWithFrame:CGRectMake(0.0,
                                                     0.0,
                                                     SCREEN_WIDTH_PORTRAIT,
                                                     GAD_SIZE_320x50.height)];
            imageADs.imageURL = [NSURL URLWithString:ad.thumb];
            
           // [self.view addSubview:imageADs];
                    }
        else {
              viewHeight = SCREEN_HEIGHT_PORTRAIT;
            imageADs.imageURL = [NSURL URLWithString:ad.thumb];
            
        }

}
- (void)adViewDidReceiveAd:(GADBannerView *)adView
{
    NSLog(@"Received ad successfully");

}

- (void)adView:(GADBannerView *)view didFailToReceiveAdWithError:(GADRequestError *)error
{
    NSLog(@"Failed to receive ad with error: %@", [error localizedFailureReason]);
    [self doRemoveAds];
}


- (void)doRemoveAds{
    
    [imageADs setAlpha:0];

    
    [imageADs removeFromSuperview];
    imageADs = nil;
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}
-(void)getData {
    [ModelManager getADs:^(NSMutableArray *arr){
        ad = [arr objectAtIndex:0];
        [self loadAbmob];
    }failure:^(NSString *err){
        NSLog(@"faile");
    }];
}


- (IBAction)onADs:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:ad.url]];
}
@end
