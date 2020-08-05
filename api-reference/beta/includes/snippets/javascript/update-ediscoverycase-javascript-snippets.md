---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryCase = {
  displayName: "My Case 1 - Renamed",
  description: "Updated description",
  externalId: "Updated externalId"
};

let res = await client.api('/compliance/ediscovery/cases/061b9a92-8926-4bd9-b41d-abf35edc7583')
	.version('beta')
	.update(ediscoveryCase);

```