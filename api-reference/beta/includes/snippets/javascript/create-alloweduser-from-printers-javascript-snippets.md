---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  '@odata.id': 'https://graph.microsoft.com/beta/users/{id}'
};

await client.api('/print/shares/{id}/allowedUsers/$ref')
	.version('beta')
	.post(user);

```