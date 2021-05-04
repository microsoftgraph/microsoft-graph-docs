---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authorizationPolicy = {
   blockMsolPowerShell: true
};

await client.api('/policies/authorizationPolicy')
	.update(authorizationPolicy);

```