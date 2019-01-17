//
//  Hashes.m
//  iXpert
//
//  Created by Felipe Rios on 09/03/12.
//  Copyright (c) 1997 - 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hashes : NSObject {
}

+ (NSString *)Encode:(const uint8_t *) input length:(NSInteger) length;
+ (NSString *)DecodeB64:(const char *)stringIn length:(NSInteger)length;
+ (NSString *)EncodeB64:(NSString *)stringIn;
+ (NSString *)EncodeMD5:(NSString *)stringIn;

@end
