---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sourceCollections = await client.api('/compliance/ediscovery/cases/{caseId}/sourceCollections')
	.version('beta')
	.get();

```