
#import "NotificationHelper.h"

@implementation NotificationHelper

#define LISTABLE_URI_KEY @"listableUriKey"

+ (void)clearNotificationsWithUri:(NSString *)uri {
	@autoreleasepool {
		NSUserNotificationCenter *c = [NSUserNotificationCenter defaultUserNotificationCenter];
		for(NSUserNotification *n in [c deliveredNotifications]) {
			NSString *s = n.userInfo[LISTABLE_URI_KEY];
			if(s && [uri isEqualToString:s]) {
				[c removeDeliveredNotification:n];
			}
		}
	}
}

@end
