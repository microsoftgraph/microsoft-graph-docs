---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/identityProtection/riskDetections')
	.version('beta')
	.filter('riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'')
	.get();

```