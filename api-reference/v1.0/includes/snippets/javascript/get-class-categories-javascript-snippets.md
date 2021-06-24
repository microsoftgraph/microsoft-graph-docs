---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentCategories = await client.api('/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignmentCategories')
	.get();

```