---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let schools = await client.api('/education/me/schools')
	.version('beta')
	.get();

```