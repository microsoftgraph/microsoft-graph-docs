---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationRubric = {
  '@odata.id': 'https://graph.microsoft.com/v1.0/education/me/rubrics/{id}'
};

await client.api('/education/classes/{id}/assignments/{id}/rubric/$ref')
	.version('beta')
	.put(educationRubric);

```