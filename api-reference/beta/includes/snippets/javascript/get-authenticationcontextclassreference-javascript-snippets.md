---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationContextClassReferences = await client.api('/identity/conditionalAccess/authenticationContextClassReferences')
	.version('beta')
	.get();

```