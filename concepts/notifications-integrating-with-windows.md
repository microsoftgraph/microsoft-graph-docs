---
title: "Integrate your Windows UWP app with the client-side SDK for user notifications"
description: "Integrate your Windows UWP app with user notifications client SDK."
localization_priority: Priority
ms.prod: "notifications"
---

# Integrate your Windows UWP app with the client-side SDK for user notifications

After you [register your app](notifications-integration-app-registration.md) in the Azure Portal and onboard your [cross-device experiences](notifications-integration-cross-device-experiences-onboarding.md) in the Partner Dev Center, the next step is to integrate your client app with the client-side SDK for Windows UWP apps.  

With the client-side SDK, your app can perform the necessary registration steps to start receiving notifications published from your app server targeted at the user who is currently signed in. The SDK then manages the notifications on the client side, including receiving new incoming notifications, managing the state of notifications to achieve scenarios like universal dismiss, and retrieving full notification history. 

## New incoming notification flow

For receiving new incoming notifications, the data flow is shown in the following diagram.

![New notification flow for Windows app](images/notifications-new-notification-windows.png)

The process involves a few components:

* App server - The back end of your application
* App client - The front end of your application (a UWP app, an Android app, or an iOS app)
* Microsoft Graph notifications - The service component that enables user notifications to be published, stored, and synced across different instances of app clients across devices and platforms
* WNS - The Windows push notification service that Microsoft Graph notifications uses to signal the clients

The diagram shows the following steps: 

1. Application logic. This step captures what triggers the notification to be published to the user. This is app-specific logic, and can be an event or data update about something else in Microsoft Graph, such as a new calendar event or task assignment, or else your app service wants to notify the user about.
2. The app server publishes a notification to the targeted user via the Microsoft Graph notifications API. For more details, see [server side integration](notifications-integrating-app-server.md).
3. On receiving the web request containing the new notification, Microsoft Graph notifications persists the content of the notification securely in the cloud for this app and this user.
4. For each app client instance subscribing to receive notifications for this user, Microsoft Graph notifications sends a signal to notify the app client, via the native push service provided by the operating system. In this case, the application is a UWP app on Windows, and it uses [WNS push raw notification](/windows/uwp/design/shell/tiles-and-notifications/raw-notification-overview) to send the signal. 
5. After the application is signaled by the incoming push notification, it asks the SDK to fetch for the changes in the user notification store. 
6. The SDK establishes a secure and compliant connection with the user notifications store in Microsoft Graph.
7. The SDK gets the data changes - in this case, the new notification contents. 
8. The SDK fires event callbacks to notify the app after the changes are successfully retrieved. 
9. Application logic. This step captures what your app chooses to do inside the event callback. Usually, this results in local app data changes and local UI updates. In this case,  the app usually constructs a toast notification popup to notify the user about the notification contents.

## Notification update flow

One of the main benefits for using Microsoft Graph notifications is that it persists notifications in the cloud securely and turns them into a stateful resource type. Therefore, it can help your application to manage and sync the correct state of the notifications across different devices for the same signed in user in a cross-device scenario. When a notification is marked as dismissed, or marked as read on one device, the other devices can be notified in real-time. "Handled once, dismissed everywhere" can become a true promise as part of the notification experience for your users. 

The following diagram shows the data flow for changing the state of a notification or deleting the notification on one device, and receiving/handling the state change or the deletion on another device.

![Update notification flow for Windows app](images/notifications-notification-update-windows.png)

Notice that the second part of the flow is similar to the flow for handling new incoming notifications. This is by design - the  programming pattern of the SDK is designed so that the application client can handle all types of user notification data changes (new incoming notifications, notification state changes, notification deleted) in a similar way.  

The diagram shows the following steps:

1. Application logic. Something triggers the notification to be changed or deleted. In general, any event can trigger a notification to change. 
2. App calling into the client SDK to update or delete a notification. Currently, we expose two properties regarding state changes - **userActionState** and **readState** - but your application can define these states and when they need to be updated. For example, when a user dismisses the notification popup, you can update the **userActionState** to be Dismissed. When a user clicks the notification popup and launches the app to consume corresponding app content, you can update the **userActionState** to be Activated and update the **readState** to be Read. 
3. After the corresponding API is called to update or delete a notification, the SDK will call into the user notification store in the cloud in order to fan-out this change to the other app client instances with the same signed in user. 
4. On receiving the update/delete request from a client, Microsoft Graph notifications will update the notification store, and identify the other app client instances that subscribed to this change.
5. For each app client subscription, Microsoft Graph notifications sends a signal to notify the app client, via the native push service provided by the operating system. In this case, this is a UWP app on Windows, and it uses [WNS push raw notification](/windows/uwp/design/shell/tiles-and-notifications/raw-notification-overview) to send the signal. 
6. After the application is signaled by the incoming push notification, it asks the SDK to fetch for the changes in the user notification store. 
7. The SDK establishes a secure and compliant connection with the user notifications store in Microsoft Graph.
8. The SDK gets the data changes - in this case, the changes are notification state updates or notification deletions. 
9. The SDK fires event callbacks to notify the app after the changes are successfully retrieved. 
10. Application logic. This step captures what your app chooses to do inside the event callback. Usually, this results in local app data changes and local UI updates. In this case, because there are notification updates, the app should update the UI locally to reflect the state change. For example, if a notification is marked as activated, you can remove the corresponding toast notification popup inside Windows action center to achieve "handled once, dismissed everywhere". 

For more information about Microsoft Graph notifications, see [Microsoft Graph Notifications overview](notifications-concept-overview.md). For more information about the steps required to integrate with Microsoft Graph notifications from end to end, see Microsoft Graph notifications [integration overview](notifications-integration-e2e-overview.md).

## Adding the SDK to your project

On Windows, the client-side SDK is a NuGet package that ships outside of the Windows operating system. This API is available in C#, C++, and WinJS. 

Download the NuGet package for the Microsoft Graph notifications SDK for Windows apps on [nuget](https://www.nuget.org/packages/Microsoft.ConnectedDevices.UserNotifications), or use the following steps to download it from your app solution in Visual Studio: 

In Visual Studio, right-click the project to bring up the context menu, and then click **Manage NuGet Packages…**.

![Manage NuGet package](images/notifications-nuget-1-manage.png)

Go to the **Browse** tab, and search for Microsoft.ConnectedDevices.UserNotifications.

![Find NuGet package](images/notifications-nuget-2-find.png)

You will see the Microsoft Graph notifications client-side SDK in the search results. Click the **Install** button to install it. 

![Install NuGet package](images/notifications-nuget-3-install.png)

After the installation finishes, the package shows up under **References** in the Solution Explorer. 

For more details about including and consuming NuGet packages from your UWP app, see:

* [Use packages from nuget.org](/azure/devops/artifacts/nuget/upstream-sources?tabs=new-nav&view=vsts)
* [Quickstart: Install and use a package in Visual Studio](/nuget/quickstart/install-and-use-a-package-in-visual-studio)


## Initializing the Connected Device Platforms

The client-side SDK is built on top of an infrastructure called Connected Device Platform. Before you can use any features, the platform must be initialized within your app. The initialization steps should occur in your main class **OnLaunched** or **onActivated** method, because they are required before the notification scenarios can take place.

You must construct and initialize the platform by instantiating the **ConnectedDevicesPlatform** class. Before doing that, make sure to hook up event handlers, as shown, because after platform is started, the events might begin to fire. 


```C#
var platform = new ConnectedDevicesPlatform();
platform.AccountManager.AccessTokenRequested += AccountManager_AccessTokenRequestedAsync;
platform.AccountManager.AccessTokenInvalidated += AccountManager_AccessTokenInvalidated;
platform.NotificationRegistrationManager.NotificationRegistrationStateChanged += NotificationRegistrationManager_NotificationRegistrationStateChanged;
platform.Start();
```

### Handling account access token

All the web calls the SDK makes, including retrieving the content of a new incoming notification, updating notification states, and more, are reading from or writing to the user's data, and therefore always require a valid access token. The SDK requires you to handle the following events - invoked when an access token is requested or invalidated - to make sure that after the platform is initialized, your access token for the user is handled correctly. 

#### AccountManager_AccessTokenRequestedAsync

For a full implementation, see the [Windows app sample](https://github.com/Microsoft/project-rome/blob/master/Windows/samples/GraphNotificationsSample/ConnectedDevicesManager.cs). 

```C#
private async void AccountManager_AccessTokenRequestedAsync(ConnectedDevicesAccountManager sender, ConnectedDevicesAccessTokenRequestedEventArgs args)
{
    private List<Account> accounts = new List<Account>();
    var account = accounts.Find((x) => x.EqualsTo(args.Request.Account));
    if (account != null)
    {
        try
        {
            var accessToken = await account.GetAccessTokenAsync(args.Request.Scopes);
            args.Request.CompleteWithAccessToken(accessToken);
        }
        catch (Exception ex)
        {
            args.Request.CompleteWithErrorMessage(ex.Message);
        }
    }
}
```

#### AccountManager_AccessTokenInvalidated

For a full implementation, see the [Windows app sample](https://github.com/Microsoft/project-rome/blob/master/Windows/samples/GraphNotificationsSample/ConnectedDevicesManager.cs). 

```C#
private void AccountManager_AccessTokenInvalidated(ConnectedDevicesAccountManager sender, ConnectedDevicesAccessTokenInvalidatedEventArgs args)
{
    Logger.Instance.LogMessage($"Token Invalidated. AccountId: {args.Account.Id}, AccountType: {args.Account.Id}, scopes: {string.Join(" ", args.Scopes)}");
}
```

### Handling push registration expiration 

Microsoft Graph notifications uses WNS, the native push platform on Windows, to signal the client application on user notifications data changes. This happens when new incoming notifications are published from your app server, or when any notification's state is updated on a different device with the same signed in user in a cross-device scenario. 

For this reason, a valid WNS channel that allows raw push notifications to come through successfully is required. The following event callback handles WNS push channel expirations. 

#### NotificationRegistrationManager_NotificationRegistrationStateChanged

For a full implementation, see the [Windows app sample](https://github.com/Microsoft/project-rome/blob/master/Windows/samples/GraphNotificationsSample/ConnectedDevicesManager.cs). 

```C#
private async void NotificationRegistrationManager_NotificationRegistrationStateChanged(ConnectedDevicesNotificationRegistrationManager sender, ConnectedDevicesNotificationRegistrationStateChangedEventArgs args)
{
    if ((args.State == ConnectedDevicesNotificationRegistrationState.Expired) || (args.State == ConnectedDevicesNotificationRegistrationState.Expiring))
    {
        var account = m_accounts.Find((x) => x.EqualsTo(args.Account));
        if (account != null)
        {
            await account.RegisterAccountWithSdkAsync();
        }
    }
}
```

## Signing in your user

Microsoft Graph notifications, like many other resource types inside Microsoft Graph, are centralized around users. In order for your app to subscribe to and start receiving notifications for the signed in user, you first need to obtain a valid OAuth token to be used in the registration process. You can use your preferred method of generating and managing the OAuth tokens. The sample app uses ADAL. 

If you're using a Microsoft account, you will need to include the following permissions in your sign-in request: `wl.offline_access"`, `ccs.ReadWrite`, `wns.connect`, `asimovrome.telemetry`, and `https://activity.windows.com/UserActivity.ReadWrite.CreatedByApp`. 

If you're using an Azure AD account, you'll need to request the following audience: `https://cdpcs.access.microsoft.com`.


## Adding the user account to the platform 

You need to register the signed in user account with the SDK. This involves adding the account and registering a push channel to receive the initial push notifications through WNS. 

```C#
var account = new ConnectedDevicesAccount(accountId, accountType);           
var addResult = await platform.AccountManager.AddAccountAsync(account);
if (addResult.Status != ConnectedDevicesAccountAddedStatus.Success)
{
    throw new Exception("Add account failed with " + addResult.Status + "!");
}            

var pushChannel = await PushNotificationChannelManager.CreatePushNotificationChannelForApplicationAsync();
ConnectedDevicesNotificationRegistration registration = new ConnectedDevicesNotificationRegistration();
registration.Type = ConnectedDevicesNotificationType.WNS;
registration.Token = pushChannel.Uri;
var registerResult = await platform.NotificationRegistrationManager.RegisterAsync(account, registration);
if (registerResult.Status != ConnectedDevicesNotificationRegistrationStatus.Success)
{
    throw new Exception("Register push channel failed with " + registerResult.Status + "!");
}
```

## Subscribing to receive user's notifications 

You need to instantiate a **UserDataFeed** object for your application for this signed in user. Your application is identified by the cross-platform app ID you provided during the [Cross-Device Experiences onboarding](notifications-integration-cross-device-experiences-onboarding.md) process.

```C#
UserDataFeed feed = UserDataFeed.GetForAccount(account, platform, "YOUR_HOST_HERE");

var scopes = new List<UserDataFeedSyncScope> { UserNotificationChannel.SyncScope };
var subscribeResult = await feed.SubscribeToSyncScopesAsync(scopes);
if (!subscribeResult)
{
    throw new Exception("Subsribe failed!");
}
var channel = new UserNotificationChannel(feed);
var reader = channel.CreateReader();
reader.DataChanged += Reader_DataChanged;
```

## Receiving and managing user notifications

The flow diagram earlier in this topic shows that the programming patterns to handle a new incoming notifications from an app server and a notification update or deletion initiated from another app client instance are similar. The following are the steps for handling these data changes. 

### Handling incoming push notification signal

All types of user notification data changes generate a signal that gets delivered to the app clients as a push notification. For Windows UWP apps, the signal is delivered as a WNS push raw notification. On receiving the raw push signal, the app should call **TryParse** to trigger the SDK to fetch from the Microsoft Graph notifications service for the actual data changes.

```C#
public async Task ReceiveNotificationAsync(string content)
{
    ConnectedDevicesNotification notification = ConnectedDevicesNotification.TryParse(content);
    if (notification != null)
    {
        await platform.ProcessNotificationAsync(notification);
    }
}
```

### Handling user notification data changes

After the SDK successfully fetches the data changes, an event callback is invoked and the app client is expected to handle notification creation, update, or deletion.

```C#
private async void Reader_DataChanged(UserNotificationReader reader, object args)
{
    var notifications = await reader.ReadBatchAsync(UInt32.MaxValue);

    foreach (var notification in notifications)
    {
        // Handle notification changes based on change type;
    }
}
```


### Update state of a notification

If a notification state change is initiated from this app client instance (for example, if the toast notification popup on this device is activated by the user), the app needs to call the SDK to update the notification's state in order to have this state change synced across all devices used by the same user. 

```C#
notification.UserActionState = UserNotificationUserActionState.Activated;
await notification.SaveAsync();
```

### Delete a notification

If a notification deletion is initiated from this app client instance (for example, if the task corresponding to this notification is marked as complete and is removed from your app's database), the app needs to call the SDK to delete the notification in order to have this delete operation synced across all devices used by the same user. 

A notification is removed from the user notification store only if it is expired or explicitly deleted. A user notification is not deleted when you update the **UserActionState** to be Dismissed, because the semantic definition of **UserActionState** is defined by the application itself.

```C#
await channel.DeleteUserNotificationAsync(notification.Id);
```

## See also

- [API reference](/windows/project-rome/notifications/api-reference-for-windows/) for the full set of APIs related to notification features in the SDK. 
- [Client-side sample](https://github.com/Microsoft/project-rome/tree/master/Windows/samples/GraphNotificationsSample) for Windows UWP apps.
- [App server sample](notifications-integrating-app-server.md) for publishing notifications.
