---
title: UserNotificationReader
description: This class provides new incoming user notifications and user notification updates. It also provides access to the collection of user notifications persisted in the Connected Device Platform. 	
keywords: microsoft, windows, user notification, how-to windows 
---

# class `UserNotificationReader`

```C#
public sealed class UserNotificationReader : IUserNotificationReader
```

This class provides new incoming user notifications and user notification updates. It also provides access to the collection of user notifications persisted in the Connected Device Platform. 	

## Methods

### ReadBatchAsync(Int32) 
Create a user notification reader to receive and manage user notifications published by app server.
```C#
public IAsyncOperation<IList<UserNotification>> ReadBatchAsync(Int32 maxBatchSize)
```

## Events


### DataChanged
Raised when the reader completes sync with the server and has new change - new incoming UserNotifications or UserNotification updates to notify the app. 

```C#
public event TypedEventHandler<UserNotificationReader, DataChangedEventArgs> DataChanged
```
