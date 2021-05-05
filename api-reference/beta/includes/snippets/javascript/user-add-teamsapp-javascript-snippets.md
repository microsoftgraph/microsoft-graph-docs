---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userScopeTeamsAppInstallation = {
   'teamsApp@odata.bind':'https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a'
};

await client.api('/users/5b649834-7412-4cce-9e69-176e95a394f5/teamwork/installedApps')
	.version('beta')
	.post(userScopeTeamsAppInstallation);

```