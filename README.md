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

* Android: [PowerManager](http://developer.android.com/reference/android/os/PowerManager.html)
* iOS: [idleTimerDisabled](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIApplication_Class/Reference/Reference.html#//apple_ref/occ/instp/UIApplication/idleTimerDisabled)
* WindowsPhone: [UserIdleDetectionMode](http://msdn.microsoft.com/en-US/library/windowsphone/develop/microsoft.phone.shell.phoneapplicationservice.useridledetectionmode%28v=vs.105%29.aspx)

Usage (PhoneGap Build)
---------
Add the following xml to your config.xml to always use the latest version of this plugin: 
`<gap:plugin name="com.simplec.plugins.powermanagement" />`
