//
//  Data.h
//  Notes
//
//  Created by Abd Al on 08/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import <Foundation/Foundation.h>

#define keyDefaultText @"New"
#define keyAllNotes @"notes"
#define keyDetailNotes @"details"

@interface Data : NSObject

+(NSMutableDictionary *)getAllNotes;
+(void)setCurrentKey:(NSString *)key;
+(NSString *)getCurrentKey;
+(void)setNoteForCurrentKey:(NSString *)note;
+(void)setNote:(NSString *)note forKey:(NSString *)key;
+(void)removeNoteForKey:(NSString *)key;
+(void)saveNotes;

@end
