---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAzureADApplicationSignInSummary = await client.api('/reports/getAzureADApplicationSignInSummary(period='D7')')
	.version('beta')
	.get();

```