---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityActions = await client.api('/security/securityActions')
	.version('beta')
	.get();

```