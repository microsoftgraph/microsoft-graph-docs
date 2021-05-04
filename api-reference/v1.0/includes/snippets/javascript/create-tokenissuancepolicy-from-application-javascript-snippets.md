---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tokenIssuancePolicy = {
  '@odata.id':'https://graph.microsoft.com/v1.0/policies/tokenIssuancePolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9'
};

await client.api('/applications/{id}/tokenIssuancePolicies/$ref')
	.post(tokenIssuancePolicy);

```