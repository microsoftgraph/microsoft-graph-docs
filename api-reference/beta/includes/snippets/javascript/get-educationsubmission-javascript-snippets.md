---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationSubmission = await client.api('/education/classes/11010/assignments/19002/submissions/33223')
	.version('beta')
	.get();

```