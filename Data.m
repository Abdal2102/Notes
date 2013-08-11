//
//  Data.m
//  Notes
//
//  Created by Abd Al on 08/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import "Data.h"

@implementation Data

static NSMutableDictionary *allNotes;
static NSString *currentKey;

+(NSMutableDictionary *)getAllNotes{
    
    if (allNotes==nil) {
        allNotes = [[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults]dictionaryForKey:keyAllNotes]];
    }
    return allNotes;
}


+(void)setCurrentKey:(NSString *)key{
    
    currentKey = key;
}
+(NSString *)getCurrentKey{
    
    return currentKey;
}
+(void)setNoteForCurrentKey:(NSString *)note{
    
    [self setNote:note forKey:currentKey];
}
+(void)setNote:(NSString *)note forKey:(NSString *)key{
    [allNotes setObject:note forKey:key];
    
}
+(void)removeNoteForKey:(NSString *)key{
    
    [allNotes removeObjectForKey:key];
    
}

+(void)saveNotes{
    
    [[NSUserDefaults standardUserDefaults]setObject:allNotes forKey:keyAllNotes];
}
@end
