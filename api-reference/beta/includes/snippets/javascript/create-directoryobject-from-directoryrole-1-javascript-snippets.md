---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
    '@odata.id':'https://graph.microsoft.com/beta/users/0f933635-5b77-4cf4-a577-f78a5eb090a2'
};

await client.api('/directoryRoles/0afed502-2456-4fd4-988e-3c21924c28a7/members/$ref')
	.version('beta')
	.post(directoryObject);

```