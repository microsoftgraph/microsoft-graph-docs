---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let schools = await client.api('/education/classes/11014/schools')
	.version('beta')
	.get();

```