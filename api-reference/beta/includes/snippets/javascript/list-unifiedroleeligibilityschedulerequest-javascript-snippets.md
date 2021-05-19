---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleEligibilityScheduleRequests = await client.api('/roleManagement/directory/roleEligibilityScheduleRequests')
	.version('beta')
	.get();

```