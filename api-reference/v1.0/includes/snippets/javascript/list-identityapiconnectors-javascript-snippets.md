---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let apiConnectors = await client.api('/identity/apiConnectors')
	.get();

```