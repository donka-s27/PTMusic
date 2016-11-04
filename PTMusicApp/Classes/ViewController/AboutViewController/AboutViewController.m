//
//  AboutViewController.m
//  PTMusicApp
//
//  Created by Donka Stoyanov on 12/6/14.
//  Copyright (c) 2014 Fruity Solution. All rights reserved.
//

#import "AboutViewController.h"
#import "SWRevealViewController.h"
#import "PlaySongViewController.h"

@interface AboutViewController ()<MP3PlayerDelegate>

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setRevealBtn];
    
    [self.view addSubview: gMP3Player.view];
    gMP3Player.delegate = self;
    // Do any additional setup after loading the view from its nib.
}

-(void)NextDetailWithSongArr:(NSMutableArray *)songarr andInde:(int)index{
    PlaySongViewController *play = [[PlaySongViewController alloc]initWithNibName:@"PlaySongViewController" bundle:nil];
    play.songArr = songarr;
    play.index = index;
    play.pauseOnLoad = ![Util isMusicPlaying];
    [self.navigationController pushViewController:play animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setRevealBtn{
    SWRevealViewController *revealController = self.revealViewController;
    [self.view addGestureRecognizer:revealController.panGestureRecognizer];
    [_revealBtn addTarget:revealController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    
}

@end
