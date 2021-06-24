---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let businessFlowTemplates = await client.api('/businessFlowTemplates')
	.version('beta')
	.get();

```