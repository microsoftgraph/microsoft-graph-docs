---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationContextClassReference = await client.api('/identity/conditionalAccess/authenticationContextClassReferences/c1')
	.version('beta')
	.get();

```