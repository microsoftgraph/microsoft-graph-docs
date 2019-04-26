---
title: UserNotificationChannel
description: This class manages the life cycle of user notifications.
keywords: microsoft, windows, Graph Notifications, how-to Windows 
---

# class `UserNotificationChannel`

```C#
public sealed class UserNotificationChannel : IUserNotificationChannel
```

This class provides the notification change reader which handles the receiving and management of user notifications for the application. 

## Methods

### CreateReader() 
Create a user notification reader to receive and manage user notifications published by app server.
```C#
public UserNotificationReader CreateReader()
```

### CreateReader(UserNotificationReaderOptions) 
Create a user notification reader with options 
```C#
public UserNotificationReader CreateReader(UserNotificationReaderOptions options)
```

### CreateReaderWithState(String) 
Create a user notification reader to receive and manage user notifications published by app server. 
The reader will start at the provided tracking state. 
```C#
public UserNotificationReader CreateReaderWithState(String readerState)
```

### GetUserNotificationAsync(String)
Get a user notification based on its id. 
```C#
public IAsyncOperation<UserNotification> GetUserNotificationAsync(String notificationId)
```

### DeleteUserNotificationAsync(String)
Get a user notification based on its id. 
```C#
public IAsyncOperation<UserNotificationUpdateResult> DeleteUserNotificationAsync(String notificationId)
```

### SyncScope()
Get the sync scope of this user notification channel.
```C#
public static IUserDataFeedSyncScope SyncScope()
```