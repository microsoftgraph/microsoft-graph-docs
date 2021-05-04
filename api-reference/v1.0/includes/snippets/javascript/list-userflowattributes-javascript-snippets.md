---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userFlowAttributes = await client.api('/identity/userFlowAttributes')
	.get();

```