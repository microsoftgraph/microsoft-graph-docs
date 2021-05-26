---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/education/classes/11021/assignments/19002/publish')
	.version('beta')
	.post();

```