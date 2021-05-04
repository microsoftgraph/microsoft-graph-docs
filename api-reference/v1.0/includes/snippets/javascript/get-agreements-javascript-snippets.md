---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agreements = await client.api('/identityGovernance/termsOfUse/agreements')
	.get();

```