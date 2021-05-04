---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sourceCollection = {
    displayName: 'Quarterly Financials search',
};

await client.api('/compliance/ediscovery/cases/{caseId}/sourceCollections/1a9b4145d8f84e39bc45a7f68c5c5119')
	.version('beta')
	.update(sourceCollection);

```