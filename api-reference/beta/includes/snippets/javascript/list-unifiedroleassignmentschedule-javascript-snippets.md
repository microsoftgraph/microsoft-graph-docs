---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignmentSchedules = await client.api('/roleManagement/directory/roleAssignmentSchedules')
	.version('beta')
	.get();

```