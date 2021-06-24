---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profileCardProperties = await client.api('/organization/{organizationId}/settings/profileCardProperties')
	.version('beta')
	.get();

```