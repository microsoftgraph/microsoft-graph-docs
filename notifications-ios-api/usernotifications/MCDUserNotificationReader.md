---
title: MCDUserNotificationReader
description: This class provides new incoming user notifications and user notification updates. It also provides access to the collection of user notifications persisted in the Connected Device Platform. 	
keywords: microsoft, windows, device relay, how-to iOS, how-to iPhone 
---

# class `MCDUserNotificationReader`

```
@interface MCDUserNotificationReader : NSObject
```

This class provides new incoming user notifications and user notification updates. It also provides access to the collection of user notifications persisted in the Connected Device Platform. 	

## Properties

### serializedState
`@property(nonatomic, readonly, nonnull) NSString* serializedState;`

Returns the current state of the change reader. Can be used to construct a new reader starting from the same state.
Based upon the last completed batch of notification changes (or initial state, if none have completed successfully).

### dataChanged
`@property(nonatomic, readonly, nonnull) MCDEvent<MCDUserNotificationReader*, MCDUserNotificationReaderDataChangedEventArgs*>* dataChanged;`

Event subscription for MCDUserNotificationReader changed.

## Methods

### readBatchAsyncWithMaxSize
`- (void)readBatchAsyncWithMaxSize:(NSUInteger)maxBatchSize
                       completion:(nonnull void (^)(NSArray<MCDUserNotification*>* _Nullable, NSError* _Nullable))completion;`

Read notification changes including new incoming notifications and updates on existing notifications in batch.