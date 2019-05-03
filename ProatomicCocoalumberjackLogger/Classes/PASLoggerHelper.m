//
//  PASLoggerHelper.m
//  ProatomicCore
//
//  Created by Guillermo Sáenz on 3/15/17.
//  Copyright © 2017 Property Atomic Strong SAC. All rights reserved.
//

#import "PASLoggerHelper.h"

@implementation PASLoggerHelper

#ifdef DEBUG
const int ddLogLevel = DDLogFlagVerbose | DDLogFlagDebug | DDLogFlagInfo | DDLogFlagWarning | DDLogFlagError;

+ (void)loadDebuggingInformationOverlay {
    
    Class overlayClass = NSClassFromString(@"UIDebuggingInformationOverlay");
    SEL prepareDebuggingOverlaySelector = NSSelectorFromString(@"prepareDebuggingOverlay");
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [overlayClass performSelector:prepareDebuggingOverlaySelector];
#pragma clang diagnostic pop
}

#else
const int ddLogLevel = DDLogFlagWarning | DDLogFlagError;
#endif

@end
