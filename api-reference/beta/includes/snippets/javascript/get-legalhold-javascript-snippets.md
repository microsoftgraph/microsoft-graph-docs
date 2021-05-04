---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let legalHold = await client.api('/compliance/ediscovery/cases/{caseId}/legalHolds/{legalholdId}')
	.version('beta')
	.get();

```