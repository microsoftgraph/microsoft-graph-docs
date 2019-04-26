---
title: MCDUserNotificationReaderOptions
description: This class allows the app to provide options on the notification reader, such as only receiving new user notifications and not existing notification updates. 
keywords: microsoft, windows, Graph Notifications, how-to iOS, how-to iPhone 
---

# class `MCDUserNotificationReaderOptions`

```
@interface MCDUserNotificationReaderOptions : NSObject
```

This class allows the app to provide options on the notification reader, such as only receiving new user notifications and not existing notification updates. 

## Properties

### startPosition
`@property(nonatomic, assign) MCDUserNotificationReaderStartPosition startPosition;`
Get or set the start position for this instance of UserNotificationReaderOptions.

### statusFilter
`@property(nonatomic, assign) MCDUserNotificationStatusFilter statusFilter;`
Get or set the status filter for this user notification reader you desire to create.

### readStateFilter
`@property(nonatomic, assign) MCDUserNotificationReadStateFilter readStateFilter;`
Get or set the read state filter that’s set for this instance of UserNotificationReaderOptions

### userActionStateFilter
`@property(nonatomic, assign) MCDUserNotificationUserActionStateFilter userActionStateFilter;`
Getor set  the user action state filter that’s set for this instance of UserNotificationReaderOptions.

## Constructors

### options
`+ (nullable instancetype)options;`
Creates and initializes a new instance of options for User Notifications.