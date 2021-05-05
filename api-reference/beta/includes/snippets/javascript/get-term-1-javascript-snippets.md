---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let term = await client.api('/termStore/groups/{groupId}/sets/{setId}/terms/{termId}')
	.version('beta')
	.get();

```