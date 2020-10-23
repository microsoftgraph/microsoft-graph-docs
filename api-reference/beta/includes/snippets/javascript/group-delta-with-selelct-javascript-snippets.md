---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups/delta')
	.version('beta')
	.select('displayName,description,mailNickname')
	.get();

```