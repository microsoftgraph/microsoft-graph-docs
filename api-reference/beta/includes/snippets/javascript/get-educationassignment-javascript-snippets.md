---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignment = await client.api('/education/classes/11014/assignments/19002')
	.version('beta')
	.get();

```