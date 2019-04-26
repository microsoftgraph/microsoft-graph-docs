---
title: MCDUserNotification
description: This class represents a user notification published by the app server via Graph Notifications and received by the app client.
keywords: microsoft, ios, graph notifications, how-to ios, how-to iphone
---

# class `MCDUserNotification`

```
@interface MCDUserNotification : NSObject
```


This class represent a single user notification instance. A user notification is created and published by your app server targeted at a user, distributed to all device endpoints of the same logged in user.
A user notification, once received by the app client, can result in experiences such as generating and showing a visual notification banner using local notification APIs of the corresponding platform.

## Properties

### notificationId
`@property(nonatomic, readonly, nonnull) NSString* notificationId;`
Gets the developer specified unique id for this user notification.

### groupId
`@property(nonatomic, readonly, nonnull) NSString* groupId;`
Gets the developer specified group id for this user notification.

### expirationTime
`@property(nonatomic, readonly, nonnull) NSDate* expirationTime;`
Gets the expiration time for this user notification.

### status
`@property(nonatomic, readonly) MCDUserNotificationStatus status;`
Gets the status of the user notification.

### changeTime
`@property(nonatomic, readonly, nonnull) NSDate* changeTime;`
Gets the time the change was made.

### priority
`@property(nonatomic, readonly) MCDUserNotificationPriority priority;`
Gets the developer specified priority for this user notification.

### content
`@property(nonatomic, readonly, nonnull) NSString* content;`
Gets the content payload for this notification which is developer defined arbitrary data.

###  readState
`@property(nonatomic, assign, readwrite) MCDUserNotificationReadState readState;`
Gets the value of the read state for this user notification that indicates the notification is read or unread.

### userActionState
`@property(nonatomic, assign, readwrite) MCDUserNotificationUserActionState userActionState;`
Gets the value of the user action state for a user notification to determine whether the notification is 
not interacted, dismissed, activated, or snoozed. 

## Methods

### saveAsync
`- (void)saveAsync:(nonnull void (^)(MCDUserNotificationUpdateStatus* _Nullable, NSError* _Nullable))completion;`

This should be called when publishing user notification changes. This method should be called whenever 
the app modifies an updatable property of the UserNotification.

#### Parameters
* `completion` The code block to execute upon completion.
