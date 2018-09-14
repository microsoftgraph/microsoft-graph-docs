# Use the notifications REST API in Microsoft Graph

You can use the notifications API in Microsoft Graph to send push notifications to a user. Simply target a user account to send a notification to, and the platform will deliver the notification to all device endpoints. Notifications API requests are performed on behalf of a user via [delegated permissions](../../../concepts/permissions_reference.md#delegated-permissions-application-permissions-and-effective-permissions) and the [notification permission]( ../../../concepts/permissions_reference.md), which can be used with either Microsoft accounts or work or school accounts.
This type of user-centric notification is represented by the [notification](..resources/projectrome_notification.md) resource and is stored in Microsoft Graph. It can then be accessed and managed by the publishing app via the [Project Rome SDK APIs](https://github.com/Microsoft/project-rome). 

## Next steps
- See the [notification resource](../resources/projectrome_notification.md) and create notifications to engage with your users. 
- Try the API in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).
