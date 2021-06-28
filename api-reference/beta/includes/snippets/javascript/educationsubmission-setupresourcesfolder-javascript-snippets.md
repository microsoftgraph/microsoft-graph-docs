---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationSubmission = {
};

await client.api('/education/classes/11012/assignments/19002/submissions/20302/setUpResourcesFolder')
	.version('beta')
	.post(educationSubmission);

```