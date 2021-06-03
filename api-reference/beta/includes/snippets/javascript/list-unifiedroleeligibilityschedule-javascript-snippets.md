---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleEligibilitySchedules = await client.api('/roleManagement/directory/roleEligibilitySchedules')
	.version('beta')
	.get();

```