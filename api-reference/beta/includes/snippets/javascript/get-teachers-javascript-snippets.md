---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teachers = await client.api('/education/classes/11023/teachers')
	.version('beta')
	.get();

```