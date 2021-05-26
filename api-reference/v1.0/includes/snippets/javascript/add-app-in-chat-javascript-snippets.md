---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsAppInstallation = {
'teamsApp@odata.bind':'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a'
};

await client.api('/chats/19:ea28e88c00e94c7786b065394a61f296@thread.v2/installedApps')
	.post(teamsAppInstallation);

```