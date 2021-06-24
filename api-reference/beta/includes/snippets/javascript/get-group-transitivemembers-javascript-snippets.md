---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let transitiveMembers = await client.api('/groups/{id}/transitiveMembers')
	.version('beta')
	.get();

```