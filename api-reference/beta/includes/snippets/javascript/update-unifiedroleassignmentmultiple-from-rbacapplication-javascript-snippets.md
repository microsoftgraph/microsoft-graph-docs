---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleAssignmentMultiple = {
    principalIds: ['0aeec2c1-fee7-4e02-b534-6f920d25b300', '2d5386a7-732f-44db-9cf8-f82dd2a1c0e0']
};

await client.api('/roleManagement/deviceManagement/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1')
	.version('beta')
	.update(unifiedRoleAssignmentMultiple);

```