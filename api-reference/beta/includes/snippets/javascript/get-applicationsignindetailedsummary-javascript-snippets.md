---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationSignInDetailedSummary = await client.api('/reports/applicationSignInDetailedSummary/{id}')
	.version('beta')
	.get();

```