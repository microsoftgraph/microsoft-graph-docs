---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/activities/13881113971988980728/')
	.version('beta')
	.delete();

```