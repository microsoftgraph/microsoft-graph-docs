---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationSchool = await client.api('/education/schools/10001')
	.version('beta')
	.get();

```