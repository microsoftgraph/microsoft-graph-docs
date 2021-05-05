---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let installedApps = await client.api('/teams/acda442c-78d2-491b-8204-4ef5019c0193/installedApps')
	.filter('teamsApp/externalId eq \'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee\'')
	.expand('teamsAppDefinition')
	.get();

```