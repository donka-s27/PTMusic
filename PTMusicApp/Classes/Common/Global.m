//
//  Global.m
//  PTMusicApp
//
//  Created by Donka Stoyanov on 1/24/15.
//  Copyright (c) 2015 Fruity Solution. All rights reserved.
//

#import "Global.h"

@implementation Global
AVPlayer *_audioPlayer;
BOOL _isAudioPlayerObserved = FALSE;
NSString *currentAudio;
float audioDurationInSecond;
BOOL _isRepeat;
BOOL _isShuffer;
MP3Player *gMP3Player;
BOOL _isPlaying;
BOOL _isTopSong;
BOOL _isPlayList;
NSMutableArray *songArr;
 float screen_height;
Admobs *adBanner;
int viewHeight;
@end
