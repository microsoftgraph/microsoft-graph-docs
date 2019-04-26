---
title: UserNotification
description: This class represents a user notification published by the app server via Graph Notifications and received by the app client.
keywords: microsoft, windows, graph notifications, how-to windows
---

# class `UserNotification`

```C#
public sealed class UserNotification : IUserNotification
```

This class represent a single user notification instance. A user notification is created and published by your app server targeted at a user, distributed to all device endpoints of the same logged in user.
A user notification, once received by the app client, can result in experiences such as generating and showing a visual notification banner using local notification APIs of the corresponding platform.

## Properties

|Name | Description |
|:-- |:-- |
|Id |Gets the developer specified unique id for this user notification.|
|   GroupId |Gets the developer specified group id for this user notification.| 
|   ExpirationTime |Gets the expiration time for this user notification.| 
|   Priority|Gets the developer specified priority for this user notification.| 
|   Content|Gets the content payload for this notification which is developer defined arbitrary data.| 
|   ReadState|Gets the value of the read state for this user notification that indicates the notification is read or unread.| 
|   UserActionState|Gets the value of the user action state for a user notification to determine whether the notification is not interacted, dismissed, activated, or snoozed.| 


## Methods

### SaveAsync() 
This should be called when publishing user notification changes. This method should be called whenever the app modifies an updatable property of the UserNotification.
```C#
public IAsyncOperation SaveAsync()
```

