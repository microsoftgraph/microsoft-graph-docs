---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let installedApps = await client.api('/teams/6903fa93-605b-43ef-920e-77c4729f8258/installedApps')
	.version('beta')
	.expand('teamsAppDefinition($expand=bot)')
	.get();

```