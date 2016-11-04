//
//  DashBoardViewController.h
//  PTMusicApp
//
//  Created by Giap Nguyen on 8/26/15.
//  Copyright (c) 2015 Fruity Solution. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashBoardViewController : UIViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIButton *revealBtn;


@property (strong, nonatomic) IBOutlet UIWebView *webView;
@end
