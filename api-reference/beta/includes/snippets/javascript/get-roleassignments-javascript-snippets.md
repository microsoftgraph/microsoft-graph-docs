---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/roleManagement/directory/roleAssignments')
	.version('beta')
	.filter('principalId eq 'a98eb769-7bd4-4489-86f6-ad96e1d58b62'')
	.get();

```