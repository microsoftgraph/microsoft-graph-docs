---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryCase = {
    displayName: "My Case 1",
};

let res = await client.api('/compliance/ediscovery/cases')
	.version('beta')
	.post(ediscoveryCase);

```