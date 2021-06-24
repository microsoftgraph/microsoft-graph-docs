---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _case = {
    displayName: 'My Case 1',
};

await client.api('/compliance/ediscovery/cases')
	.version('beta')
	.post(_case);

```