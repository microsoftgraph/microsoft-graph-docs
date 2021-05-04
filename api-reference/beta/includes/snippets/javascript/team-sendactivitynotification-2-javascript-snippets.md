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
        value: 'https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/tabs/{tabId}'
    },
    activityType: 'reservationUpdated',
    previewText: {
        content: 'You have moved up the queue'
    },
    recipient: {
        '@odata.type': 'Microsoft.Teams.GraphSvc.aadUserNotificationRecipient',
        userId: '569363e2-4e49-4661-87f2-16f245c5d66a'
    },
    templateParameters: [
        {
            name: 'reservationId',
            value: 'TREEE433'
        },
        {
            name: 'currentSlot',
            value: '23'
        }
    ]
};

await client.api('/teams/{teamId}/sendActivityNotification')
	.version('beta')
	.post(sendActivityNotification);

```