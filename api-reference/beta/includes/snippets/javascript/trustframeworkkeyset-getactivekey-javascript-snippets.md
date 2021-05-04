---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let trustFrameworkKey = await client.api('/trustFramework/keySets/{id}/getActiveKey')
	.version('beta')
	.get();

```