---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userScopeTeamsAppInstallation = await client.api('/users/{id}/teamwork/installedApps/{id}')
	.version('beta')
	.get();

```