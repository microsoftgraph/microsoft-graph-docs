---
title: MCDUserNotificationReadStateFilter
description: Contains values that categorize notifications by read state (for filtered notification retrieval).
keywords: microsoft, windows, Graph Notifications, how-to iOS, how-to iPhone 
---

# enum `MCDUserNotificationReadStateFilter`

```
typedef NS_ENUM(NSInteger, MCDUserNotificationReadStateFilter)
```

Contains values that categorize notifications by read state (for filtered notification retrieval).

|Name | Value | Description |
|:-- |:-- |:-- |
|   MCDUserNotificationReadStateFilterAny | 0 | Include notifications regardless of read state.|
|   MCDUserNotificationReadStateFilterUnread | 1 | Include notifications that haven't been read.|
|   MCDUserNotificationReadStateFilterRead | 2 | Include notifications that have been read. |