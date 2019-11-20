---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const notification = {
  notification: {
    targetHostName: "targetHostName-value",
    appNotificationId: "appNotificationID-value",
    expirationDateTime: "datetime-value",
    targetPolicy: {
	  platformTypes: [
		"platformTypes-value"
		]
      }, 
    payload: {
      rawContent: "rawContent-value",
      visualContent: {
        title: "title-value",
        body: "body-value"
      }
    },
    displayTimeToLive: 99,
    priority: "priority-value",
    groupName: "groupName-value"
  }
};

let res = await client.api('/me/notifications')
	.version('beta')
	.post(notification);

```