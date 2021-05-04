---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tokenLifetimePolicies = await client.api('/policies/tokenLifetimePolicies')
	.get();

```