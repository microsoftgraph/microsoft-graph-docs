---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/education/classes/11016/members')
	.version('beta')
	.get();

```