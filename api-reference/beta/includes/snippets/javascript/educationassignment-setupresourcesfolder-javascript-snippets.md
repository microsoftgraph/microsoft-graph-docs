---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignment = {
};

await client.api('/education/classes/11012/assignments/19002/setUpResourcesFolder')
	.version('beta')
	.post(educationAssignment);

```