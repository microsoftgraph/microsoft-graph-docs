---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignmentScheduleRequests = await client.api('/roleManagement/directory/roleAssignmentScheduleRequests')
	.version('beta')
	.get();

```