---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let notes = await client.api('/me/profile/notes')
	.version('beta')
	.get();

```