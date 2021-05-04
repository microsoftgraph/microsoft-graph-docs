---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsApps = await client.api('/appCatalogs/teamsApps')
	.version('beta')
	.filter('appDefinitions/any(a:a/allowedInstallationScopes has \'personal\')')
	.expand('appDefinitions($select=id,displayName,allowedInstallationScopes)')
	.get();

```