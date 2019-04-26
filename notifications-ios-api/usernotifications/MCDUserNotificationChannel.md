---
title: MCDUserNotificationChannel
description: This class manages the life cycle of user notifications.
keywords: microsoft, windows, device relay, how-to iOS, how-to iPhone 
---

# class `MCDUserNotificationChannel`

```
@interface MCDUserNotificationChannel : NSObject
```

This class provides the notification change reader which handles the receiving and management of user notifications for the application. 

## Properties

### syncScope
`@property(class, readonly, nonnull) MCDUserDataFeedSyncScope* syncScope;`

SyncScope used to ensure UserNotifications are included in the feed.

## Constructors

### channelWithUserDataFeed
`+ (nullable instancetype)channelWithUserDataFeed:(nonnull MCDUserDataFeed*)userDataFeed;`

#### Parameters

### userDataFeed
The MCDUserDataFeed used to initialize this class.

### initWithUserDataFeed
`- (nullable instancetype)initWithUserDataFeed:(nonnull MCDUserDataFeed*)userDataFeed;`

### userDataFeed
The MCDUserDataFeed used to initialize this class.

## Methods

### createReader
`- (MCDUserNotificationReader* _Nullable)createReader`

Create a user notification reader to receive and manage user notifications published by app server.

### createReaderWithOptions
`- (MCDUserNotificationReader* _Nullable)createReaderWithOptions:(MCDUserNotificationReaderOptions* _Nonnull)options`

Create a user notification reader with options.

### createReaderWithState
`- (MCDUserNotificationReader* _Nullable)createReaderWithState:(NSString* _Nonnull)readerState`

Create a user notification reader to receive and manage user notifications published by app server. 
The reader will start at the provided tracking state.  

### getUserNotificationAsync
`- (void)getUserNotificationAsync:(NSString* _Nonnull)notificationId
                      completion:(nonnull void (^)(MCDUserNotification* _Nullable, NSError* _Nullable))completion`

Get a user notification based on its id.

### deleteUserNotificationAsync
```
- (void)deleteUserNotificationAsync:(NSString* _Nonnull)notificationId
                         completion:(nonnull void (^)(MCDUserNotificationUpdateResult* _Nullable, NSError* _Nullable))completion
```

Delete a user notification based on its id. 