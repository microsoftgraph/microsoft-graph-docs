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
	.filter(' principalId eq 'f1847572-48aa-47aa-96a3-2ec61904f41f'')
	.get();

```