---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendActivityNotification = {
    topic: {
        source: "entityUrl",
        value: "https://graph.microsoft.com/beta/users/{userId}/teamwork/installedApps/{installationId}"
    },
    activityType: "taskCreated",
    previewText: {
        content: "New Task Created"
    },
    templateParameters: [
        {
            name: "taskId",
            value: "Task 12322"
        }
    ]
};

let res = await client.api('/users/{userId}/teamwork/sendActivityNotification')
	.version('beta')
	.post(sendActivityNotification);

```