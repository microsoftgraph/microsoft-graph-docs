---
title: Integrating UWP Apps with Graph Notifications
description: How to perform the necessary registration steps to become a receiving endpoint for notifications published from your app server.
ms.assetid: c973d534-08e9-4f6e-8b54-bcae97067961
ms.localizationpriority: medium
ms.custom: seodec18
---

# How-To Guide: Integrating with MS Graph Notifications (Windows UWP)

With the Graph Notifications client-side SDK on Windows, your Windows UWP app can perform the necessary registration steps to become a receiving endpoint that receives notifications published from your app server targeted at a user. The SDK is then used to manage the notifications on the client side including receiving new notification payloads arrived on this client, managing the state of notifications, and retrieving notification history. For more information about MS Graph Notifications and how it enables human-centric notification delivery, see [Microsoft Graph Notifications Overview](index.md)

See the [API reference](api-reference-for-windows/index.md) page for links to the reference docs relevant to notification scenarios.

## Preliminary setup for accessing the Connected Devices Platform in order to use Graph Notifications 
There are a few steps you must take to integrate with Graph Notifications
* MSA or AAD App Registration
* Dev Center Onboarding to Provide Cross-Platform App Identity and Push Notification Credentials
* Adding the SDK and Initializing the Connected Devices Platform
* Associate the Notification Service with Connected Devices Platform

First, you must complete the MSA and/or AAD App Registration. If you've done this already, skip to the next section.
[!INCLUDE [windows/platform-init](../includes/windows/notifications-app-registration-onboarding.md)]
Next, you must onboard with Microsoft Windows Dev Center to get access to the Connected Device Platform in order to integrate with cross-device experiences including use of Graph Notifications. If you've done this already, skip to the next section.
[!INCLUDE [windows/notification-init](../includes/windows/notifications-dev-center-onboarding.md)]
Next, you must add the Project Rome SDK to your project and initialize the Connected Devices Platform. If you've done this already, skip to the next section.
[!INCLUDE [android/notification-init](../includes/android/notifications-platfrom-init.md)]
Lastly, you must enable your app to receive push notifications. If you've done this already, skip to the next section.
[!INCLUDE [android/notification-init](../includes/android/notifications-notification-init.md)]

## Initialize a Graph Notification channel
At a high level, the SDK allows your app to subscribe to different channels in order to receive and manage different types of User Data – including Graph Notifications, User Activities, and more. These are all stored and synced in **UserDataFeed**. **UserNotification** is the class and data type corresponding to a user-targeted notification sent via Graph Notifications. 
To integrate with Graph Notification and start receiving UserNotification published by your app server, you will first need to initialize the user data feed by creating a **UserNotificationChannel**. You should treat this like the platform initialization step above: it should be checked and possibly redone whenever the app comes to the foreground (but not before platform initialization). 

## Create a UserNotificationReader to receive incoming UserNotifications and access UserNotification history
Once you have a **UserNotificationChannel** reference, you need a **UserNotificationReader** in order to allow the SDK to fetch the actual notification content from the server. A UserNotificationReader in this case enables the app client’s access to this data feed – to receive latest notification payload via event listener, or to access the full UserNotification collection which can be used as view model of the user’s notification history.  

The code below shows the steps to instantiate a user notification channel, create a user notification reader, and add an event handler on the user notification reader which gets triggered when the COnnected Device Platform completes each sync and has new changes to notify you about. 

```C#

public async Task SetupChannel()
{
    var account = m_accoutProvider.SignedInAccount;

    if (m_feed == null)
    {
        await Task.Run(() =>
        {
            lock (this)
            {
                if (m_feed == null)
                {
                    m_platform = new ConnectedDevicesPlatform(m_accoutProvider, this);

                    Logger.Instance.LogMessage($"Create feed for {account.Id} {account.Type}");
                    m_feed = new UserDataFeed(account, m_platform, "graphnotifications.sample.windows.com");
                    m_feed.SyncStatusChanged += Feed_SyncStatusChanged;
                    m_feed.AddSyncScopes(new List<IUserDataFeedSyncScope>
                    {
                        UserNotificationChannel.SyncScope
                    });

                    m_channel = new UserNotificationChannel(m_feed);
                    m_reader = m_channel.CreateReader();
                    m_reader.DataChanged += Reader_DataChanged;
                }
            }
        });
    }
}

```

### Receiving UserNotifications

In the above section we see that an event listner is added to the user notification reader. You should implement this event listener to read all the new notifications and notification updates from the reader, and implement your own business logic to handle each of these new changes. 

> [!TIP] 
> This event listener is where you handle the main business logic and “consume” the content of your notification payload based on your scenarios. If you currently use WNS’s raw notification to construct a local toast notification in the OS-level Action Center, or if you use the content in the notification to update some in-app UI, this is the place to do that. 

The code below shows you how the sample app chooses to raise a local toast notification for all the incoming UserNotification that are Active, and remove the corresponding notification UI in the in-app view if a notification is deleted. 

```C#

private void Reader_DataChanged(UserNotificationReader sender, object args)
{
    ReadNotifications(sender, true);
}

private async void ReadNotifications(UserNotificationReader reader, bool showToast)
{
    var notifications = await reader.ReadBatchAsync(UInt32.MaxValue);

    foreach (var notification in notifications)
    {

        if (notification.Status == UserNotificationStatus.Active)
        {
            m_newNotifications.RemoveAll((n) => { return (n.Id == notification.Id); });
            if (notification.UserActionState == UserNotificationUserActionState.NoInteraction)
            {
                // new notification, show this to user using the Windows local toast notification APIs
                m_newNotifications.Add(notification);
                if (!string.IsNullOrEmpty(notification.Content) && showToast)
                {
                    ShowToastNotification(BuildToastNotification(notification.Id, notification.Content));
                }
            }

            m_historicalNotifications.RemoveAll((n) => { return (n.Id == notification.Id); });
            m_historicalNotifications.Insert(0, notification);
        }
        else
        {
            // Existing notification is marked as deleted, remove from display
            m_newNotifications.RemoveAll((n) => { return (n.Id == notification.Id); });
            m_historicalNotifications.RemoveAll((n) => { return (n.Id == notification.Id); });
            RemoveToastNotification(notification.Id);
        }
    }
}

```
## Update the state of an existing UserNotification
In the previous section, we mentioned that sometimes a UserNotification change received through the reader could be a state update on an existing UserNotification – whether that’s being marked as dismissed or marked as read. In this case, the app client can choose what to do, such as enabling universal dismiss by removing the corresponding visual notification on this particular device. 
Taking a step back, your app client is often the one that initiated this UserNotification change update to begin with – from a different device. You can choose the time to update the state of your UserNotifications, but usually they get updated when the corresponding visual notification is handled by the user on that device, or the notification is further handled by the user in some in-app experience you enable. 
Here is an example of what the flow would look like:
Your app server publishes a notification targeted at User A. User A receives this notification on both his PC and his phone where the app clients are installed. The user clicks on the notification on PC, and chases into the app to handles the corresponding task. The app client on this PC will then call into Connected Devices Platform SDK to update the state of the corresponding UserNotification in order to have this update synced across all this user’s devices. The other app clients, upon receiving this state update in real-time, will then remove the corresponding visual alert / message / toast notification from the device’s notification center / notification tray / Action Center. This is how notifications get universally dismissed across a user’s devices. 

> [!TIP] 
> UserNotification class currently provides 2 types of state updates – you can modify the UserNotificationReadState or the UserNotificationUserActionState and define your own logic on what should happen when notifications are updated. For example, you can mark UserActionState to be Activated or Dismissed, and pivot on that value to implement universal dismiss. Alternatively, or at the same time you can mark ReadState as Read or Unread and based on that determine which notifications should show up in the in-app notification history view. 
Below code snippet shows how to mark the UserNotificationUserActionState of a notification as Dismissed.

```C#
public async void Dismiss(string id)
{
    var notification = m_newNotifications.Find((n) => { return (n.Id == id); });
    if (notification != null)
    {
        notification.UserActionState = UserNotificationUserActionState.Dismissed;
        await notification.SaveAsync();
    }
}

```
