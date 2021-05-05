---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _case = {
  displayName: 'My Case 1 - Renamed',
  description: 'Updated description',
  externalId: 'Updated externalId'
};

await client.api('/compliance/ediscovery/cases/061b9a92-8926-4bd9-b41d-abf35edc7583')
	.version('beta')
	.update(_case);

```