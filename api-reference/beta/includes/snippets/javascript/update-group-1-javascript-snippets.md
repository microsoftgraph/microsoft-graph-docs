---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
   description: 'description-value',
   displayName: 'displayName-value'
};

await client.api('/groups/{id}')
	.version('beta')
	.update(group);

```