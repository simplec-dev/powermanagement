/**
 * Cordova (iOS) plugin for accessing the power-management functions of the device
 */

#ifdef CORDOVA_FRAMEWORK
#import <CORDOVA/CDVPlugin.h>
#else
#import "CORDOVA/CDVPlugin.h"
#endif

/**
 * Interface which does the actual handling
 */
@interface PowerManagement :CDVPlugin {    
}
/**
 * Sets the idleTimerDisable property to true so that the idle timeout is disabled
 */
- (void) acquire:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

/**
 * Sets the idleTimerDisable property to false so that the idle timeout is enabled
 */
- (void) release:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end

