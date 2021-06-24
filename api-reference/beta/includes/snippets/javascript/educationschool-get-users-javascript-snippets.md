---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/education/schools/10002/users')
	.version('beta')
	.get();

```