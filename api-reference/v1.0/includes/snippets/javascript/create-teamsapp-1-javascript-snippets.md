---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsApp = [Zip file containing a Teams app package];

await client.api('/appCatalogs/teamsApps')
	.post(teamsApp);

```