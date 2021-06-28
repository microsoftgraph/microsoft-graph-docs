---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationCategory = {
  displayName: 'Quizzes'
};

await client.api('/education/classes/9a5e4047-c1dc-4243-9628-580d3c64b80c/assignmentCategories')
	.version('beta')
	.post(educationCategory);

```