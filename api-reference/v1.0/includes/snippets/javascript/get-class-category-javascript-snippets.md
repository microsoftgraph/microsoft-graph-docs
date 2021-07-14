---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationCategory = await client.api('/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignmentCategories/96821157-5efb-4706-8ca2-a90b26c44852')
	.get();

```