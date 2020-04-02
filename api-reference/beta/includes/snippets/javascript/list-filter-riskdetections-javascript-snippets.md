---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/riskDetections')
	.version('beta')
	.filter('riskType eq 'unfamiliarFeatures' or riskLevel eq 'medium'')
	.get();

```