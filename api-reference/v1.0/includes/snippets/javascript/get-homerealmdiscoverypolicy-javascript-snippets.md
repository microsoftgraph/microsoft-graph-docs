---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let homeRealmDiscoveryPolicy = await client.api('/policies/homeRealmDiscoveryPolicies/{id}')
	.get();

```