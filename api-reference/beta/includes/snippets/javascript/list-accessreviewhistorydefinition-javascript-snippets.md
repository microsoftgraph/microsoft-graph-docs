---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let historyDefinitions = await client.api('/identityGovernance/accessReviews/historyDefinitions')
	.version('beta')
	.get();

```