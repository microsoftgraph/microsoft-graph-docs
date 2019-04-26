---
title: UserNotificationReaderOptions
description: This class allows the app to provide options on the notification reader, such as only receiving new user notifications and not existing notification updates. 
keywords: microsoft, windows, Graph Notifications, how-to Windows 
---

# class `UserNotificationReaderOptions`

```C#
public sealed class UserNotificationReaderOptions : IUserNotificationReaderOptions
```

This class allows the app to provide options on the notification reader, such as only receiving new user notifications and not existing notification updates. 

## Constructors

### UserNotificationReaderOptions
Creates and initializes a new instance of UserNotificationReaderOptions.

```C#
public UserNotificationReaderOptions()
```

### UserNotificationReaderOptions(UserNotificationReaderStartPosition, UserNotificationStatusFilter, UserNotificationReadStateFilter, UserNotificationUserActionStateFilter)
Creates and initializes a new instance of UserNotificationReaderOptions with filters and start position specified. 

```C#
public UserNotificationReaderOptions(UserNotificationReaderStartPosition startPosition, UserNotificationStatusFilter statusFilter, UserNotificationReadStateFilter readStateFilter, UserNotificationUserActionStateFilter userActionStateFilter)
```

## Properties

|Name | Description |
|:-- |:-- |
|StartPosition |Get or set the start position for this instance of UserNotificationReaderOptions.|
|   StatusFilter |Get or set the status filter for this user notification reader you desire to create.| 
|   ReadStateFilter |Get or set the read state filter that’s set for this instance of UserNotificationReaderOptions.| 
|   UserActionStateFilter|Getor set  the user action state filter that’s set for this instance of UserNotificationReaderOptions.| 




