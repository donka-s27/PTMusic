//
//  Global.h
//  PTMusicApp
//
//  Created by Donka Stoyanov on 1/24/15.
//  Copyright (c) 2015 Fruity Solution. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "MP3Player.h"
#import "Admobs.h"

@interface Global : NSObject
extern AVPlayer *_audioPlayer;
extern BOOL _isAudioPlayerObserved;
extern NSString *currentAudio;
extern float audioDurationInSecond;
extern BOOL _isRepeat;
extern BOOL _isShuffer;
extern MP3Player *gMP3Player;
extern BOOL _isPlaying;
extern BOOL _isTopSong;
extern NSMutableArray *songArr;
extern float screen_height;
extern Admobs *adBanner;
extern int viewHeight;
extern BOOL _isPlayList;
@end
