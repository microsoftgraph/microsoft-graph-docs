---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/appCatalogs/teamsApps')
	.version('beta')
	.filter('id eq '876df28f-2e78-423b-94a5-44181bd0e225',')
	.expand('appDefinitions')
	.get();

```