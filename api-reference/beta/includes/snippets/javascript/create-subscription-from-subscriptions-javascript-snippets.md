---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscription = {
   changeType: "created",
   notificationUrl: "https://webhook.azurewebsites.net/api/send/myNotifyClient",
   resource: "me/mailFolders('Inbox')/messages",
   expirationDateTime:"2016-11-20T18:23:45.9356913Z",
   clientState: "secretClientValue",
   latestSupportedTlsVersion: "v1_2"
};

let res = await client.api('/subscriptions')
	.version('beta')
	.post(subscription);

```