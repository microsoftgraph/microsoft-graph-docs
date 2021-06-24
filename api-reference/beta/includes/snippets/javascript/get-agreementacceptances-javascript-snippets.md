---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agreementAcceptances = await client.api('/me/agreementAcceptances')
	.version('beta')
	.get();

```