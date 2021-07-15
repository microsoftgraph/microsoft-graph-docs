---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tags = await client.api('/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags')
	.version('beta')
	.get();

```