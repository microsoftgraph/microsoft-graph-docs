---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onenoteOperation = {
  id: 'id-value',
  groupId: 'groupId-value'
};

await client.api('/me/onenote/pages/{id}/copyToSection')
	.version('beta')
	.post(onenoteOperation);

```