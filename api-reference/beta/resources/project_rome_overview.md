# Use the Microsoft Graph API to work with Project Rome 

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

[Project Rome](https://developer.microsoft.com/en-us/windows/project-rome) is a Microsoft initiative to build a cross-device experiences platform. Project Rome enables an app on a local client or service to interact with apps and services on a remote host when the user signs in with the same Microsoft account that they use to sign in on the client device. This allows you to program cross-device and cross-platform experiences that are centered around user tasks rather than devices. 

Two key components are exposed via Microsoft Graph to enable these experiences: devices and activities. 

## Activities

Activities in Microsoft Graph enable you to drive user engagement with your apps across devices and platforms. An activity is the unit of user engagement, and consists of three components:

- A deep link
- A visual representation
- Content metadata that describes the activity, using the [http://schema.org/](http://schema.org/) shared vocabulary

When a session is created by an application, a history item is added to the activity to reflect the period of user engagement. Each time a user reengages with an activity, a new history item is added to the activity to accrue user engagement.

When an application publishes user activity objects, the object will show up in some of the new UI surfaces in Windows; for example, Cortana Notifications and Timeline. You can specify both rich metadata (to allow activities to be presented in just the right context) and rich visuals (using [Adaptive Card](http://adaptivecards.io/) markup) in your activity objects.

You can use the following Microsoft Graph APIs to create and retrieve user activities:

- [Create or replace activity](../api/projectrome_put_activity.md)
- [Get activities](../api/projectrome_get_activities.md)
- [Get recent activities](../api/projectrome_get_recent_activities.md)
- [Delete an activity](../api/projectrome_delete_activity.md)
- [Create or replace a history item](../api/projectrome_put_historyitem.md)
- [Delete a history item](../api/projectrome_delete_historyitem.md)

## Devices

You can use Project Rome APIs in Microsoft Graph to:

- Discover and connect to user's devices
- Remotely launch apps on those devices
- Send messages to your apps on those devices

With these APIs, you can build apps that create rich experiences that transcend a single device. For example, you can extend your app to launch on a bigger screen. Or you can create a companion experience for an app on another of the user's devices.

You can use the following Microsoft Graph APIs to communicate with other Windows devices:

- [List the user's devices](../api/user_list_devices.md)
- [Send a command to a device](../api/send_device_command.md)
- [Get command status](../api/get_device_command_status.md)
