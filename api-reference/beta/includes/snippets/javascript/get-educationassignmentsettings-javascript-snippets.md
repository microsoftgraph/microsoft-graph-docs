---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignmentSettings = await client.api('/education/classes/{id}/assignmentSettings')
	.version('beta')
	.get();

```