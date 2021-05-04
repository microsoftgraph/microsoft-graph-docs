---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let reviewSets = await client.api('/compliance/ediscovery/cases/{caseId}/reviewSets')
	.version('beta')
	.get();

```