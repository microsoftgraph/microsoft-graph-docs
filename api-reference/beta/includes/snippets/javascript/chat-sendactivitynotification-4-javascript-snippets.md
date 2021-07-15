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
        source: 'entityUrl',
        value: 'https://graph.microsoft.com/beta/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2'
    },
    activityType: 'taskCreated',
    previewText: {
        content: 'New Task Created'
    },
    recipient: {
        '@odata.type': 'microsoft.graph.chatMembersNotificationRecipient',
        chatId: '19:1c3af46e9e0f4a5293343c8813c47619@thread.v2'
    },
    templateParameters: [
        {
            name: 'taskId',
            value: 'Task 12322'
        }
    ] 
};

await client.api('/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2/sendActivityNotification')
	.version('beta')
	.post(sendActivityNotification);

```