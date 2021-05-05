---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let homeRealmDiscoveryPolicies = await client.api('/policies/homeRealmDiscoveryPolicies')
	.get();

```