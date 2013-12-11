PowerManagement
===============
Plugin for PhoneGap Build

The original plugin was not compatible with PhoneGap Build.  We created a plugin.xml for ios.
Android will follow shortly, but we are not deploying there right now and cannot test it.

The rest of this file is edited the original readme
---------

The PowerManagement plugin offers access to the devices power-management functionality.
It should be used for applications which keep running for a long time without any user interaction.

For details on power functionality see:

* iOS: [idleTimerDisabled](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/Reference/Reference.html#//apple_ref/occ/instp/UIApplication/idleTimerDisabled)


Using the plugin
----------------

	// prevent device from sleeping
    window.plugins.powerManagement.acquire();
    
	// allow device to sleep
    window.plugins.powerManagement.release();
    
    