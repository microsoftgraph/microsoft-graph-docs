---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8')
	.version('beta')
	.delete();

```