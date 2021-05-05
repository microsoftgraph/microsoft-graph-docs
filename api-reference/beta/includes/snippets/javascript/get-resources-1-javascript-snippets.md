---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/education/classes/11012/assignments/19002/resources')
	.version('beta')
	.get();

```