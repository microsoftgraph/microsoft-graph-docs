---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignmentDefaults = await client.api('/education/classes/{id}/assignmentDefaults')
	.version('beta')
	.get();

```