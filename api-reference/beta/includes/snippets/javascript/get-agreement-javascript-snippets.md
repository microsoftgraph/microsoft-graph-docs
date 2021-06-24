---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agreement = await client.api('/identityGovernance/termsOfUse/agreements/{id}')
	.version('beta')
	.expand('files')
	.get();

```