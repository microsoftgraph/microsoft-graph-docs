---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentResource = {
  distributeForStudentWork: 'false'
};

await client.api('/education/classes/11021/assignments/19002/resources/850f51b7-1df9-4ec0-bd62-64a0214b9cbf')
	.version('beta')
	.update(educationAssignmentResource);

```