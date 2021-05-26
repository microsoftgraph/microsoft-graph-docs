---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceConfigurationRecords = await client.api('/domains/contoso.com/serviceConfigurationRecords')
	.version('beta')
	.get();

```