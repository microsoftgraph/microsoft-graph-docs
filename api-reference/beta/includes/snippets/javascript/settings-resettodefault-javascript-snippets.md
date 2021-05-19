---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/compliance/ediscovery/cases/{caseId}/settings/resetToDefault')
	.version('beta')
	.post();

```