---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getCredentialUsageSummary = await client.api('/reports/getCredentialUsageSummary(period='D30')')
	.version('beta')
	.filter('feature eq \'registration\'')
	.get();

```