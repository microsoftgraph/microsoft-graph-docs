---
title: MCDUserNotificationStatus
description: Contains values that determines whether the notification is deleted or not. Deleted notifications will still be in the notification store and be returned by the reader before the platform cleanup happens. A corresponding reader filter UserNotificationStatusFilter can be applied to prevent these notifications from showing up in notification reader. 
keywords: microsoft, windows, Graph Notifications, how-to iOS, how-to iPhone 
---

# enum `MCDUserNotificationStatus`

```
typedef NS_ENUM(NSInteger, MCDUserNotificationStatus)
```

Contains values that determines whether the notification is deleted or not. Deleted notifications will still be in the notification store and be returned by the reader before the platform cleanup happens. A corresponding reader filter UserNotificationStatusFilter can be applied to prevent these notifications from showing up in notification reader. 

|Name | Value | Description |
|:-- |:-- |:-- |
|   MCDUserNotificationStatusActive |0| The notification is still active and persisted inside Connected Devices Platform store. |
|   MCDUserNotificationStatusDeleted | 1| The notification has been deleted.|