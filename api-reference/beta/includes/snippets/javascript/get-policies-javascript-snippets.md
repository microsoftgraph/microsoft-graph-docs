---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/identity/conditionalAccess/policies')
	.version('beta')
	.filter('displayName eq \'SimplePolicy1\' or displayName eq \'SimplePolicy2\'')
	.get();

```