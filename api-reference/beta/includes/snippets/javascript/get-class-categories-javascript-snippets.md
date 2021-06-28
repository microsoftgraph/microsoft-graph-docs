---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentCategories = await client.api('/education/classes/4797d052-ebf5-4018-a088-e11adc6b2cbb/assignmentCategories')
	.version('beta')
	.get();

```