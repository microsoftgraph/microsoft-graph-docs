---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationalActivities = await client.api('/me/profile/educationalActivities')
	.version('beta')
	.get();

```