/**
 * Cordova (iOS) plugin for accessing the power-management functions of the device
 */
#import "PowerManagement.h"

/**
 * Actual implementation of the interface
 */
@implementation PowerManagement
- (void) acquire:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    CDVPluginResult* result = nil;
    NSString* jsString = nil;
    NSString* callbackId = [arguments objectAtIndex:0];
    
    // Acquire a reference to the local UIApplication singleton
    UIApplication* app = [UIApplication sharedApplication];
    
    if( ![app isIdleTimerDisabled] ) {
        [app setIdleTimerDisabled:true];
        
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        jsString = [result toSuccessCallbackString:callbackId];
    }
    else {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ILLEGAL_ACCESS_EXCEPTION messageAsString:@"IdleTimer already disabled"];
        jsString = [result toErrorCallbackString:callbackId];
    }
    
    [self writeJavascript:jsString];
}


- (void) release:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{    
    CDVPluginResult* result = nil;
    NSString* jsString = nil;
    NSString* callbackId = [arguments objectAtIndex:0];
    
    // Acquire a reference to the local UIApplication singleton
    UIApplication* app = [UIApplication sharedApplication];
    
    if( [app isIdleTimerDisabled] ) {
        [app setIdleTimerDisabled:false];
        
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        jsString = [result toSuccessCallbackString:callbackId];
    }
    else {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ILLEGAL_ACCESS_EXCEPTION messageAsString:@"IdleTimer not disabled"];
        jsString = [result toErrorCallbackString:callbackId];
    }
    
    [self writeJavascript:jsString];
}
@end

