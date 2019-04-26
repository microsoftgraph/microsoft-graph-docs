---
title: MCDUserNotificationStatusFilter
description: Contains values that indicates a read state filter when creating a notification reader. This determines whether the app wants to receive all notifications, only read ones, or only unread ones. 
keywords: microsoft, windows, Graph Notifications, how-to iOS, how-to iPhone 
---

# enum `MCDUserNotificationStatusFilter`

```
typedef NS_ENUM(NSInteger, MCDUserNotificationStatusFilter)
```

Contains values that indicates a read state filter when creating a notification reader. This determines whether the app wants to receive all notifications, only read ones, or only unread ones. 

|Name | Value | Description |
|:-- |:-- |:-- |
|   MCDUserNotificationStatusFilterAny | 0| Include all notifications regardless of status value. |
|   MCDUserNotificationStatusFilterActive |1| Include notifications that are active and persisted in Connected Devices Platform notification store. |
|   MCDUserNotificationStatusFilterDeleted | 2| Include deleted notifications only.|