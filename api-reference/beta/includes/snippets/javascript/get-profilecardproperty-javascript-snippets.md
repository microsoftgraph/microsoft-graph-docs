---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profileCardProperty = await client.api('/organization/{organizationId}/settings/profileCardProperties/{id}')
	.version('beta')
	.get();

```