---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identitySecurityDefaultsEnforcementPolicy = await client.api('/policies/identitySecurityDefaultsEnforcementPolicy')
	.get();

```