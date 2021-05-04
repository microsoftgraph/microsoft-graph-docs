---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let people = await client.api('/me/people')
	.version('beta')
	.get();

```