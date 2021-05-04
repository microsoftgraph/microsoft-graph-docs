---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sets = await client.api('/termStore/groups/{groupId}/sets')
	.version('beta')
	.get();

```