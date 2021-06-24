---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const legalHold = {
  description: 'This is a description for a legalHold'
};

await client.api('/compliance/ediscovery/cases/{caseId}/legalHolds/{legalholdId}')
	.version('beta')
	.update(legalHold);

```