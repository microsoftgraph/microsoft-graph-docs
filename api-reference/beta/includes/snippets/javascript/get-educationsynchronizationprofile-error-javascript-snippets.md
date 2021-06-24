---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let errors = await client.api('/education/synchronizationProfiles/{id}/errors')
	.version('beta')
	.get();

```