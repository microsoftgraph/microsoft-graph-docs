---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let longRunningOperation = await client.api('/users/{id | userPrincipalName}/authentication/operations/{id}')
	.version('beta')
	.get();

```