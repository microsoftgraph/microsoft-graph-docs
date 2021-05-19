---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignmentScheduleInstances = await client.api('/roleManagement/directory/roleAssignmentScheduleInstances')
	.version('beta')
	.get();

```