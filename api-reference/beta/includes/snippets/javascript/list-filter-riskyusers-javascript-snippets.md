---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/identityProtection/riskyUsers')
	.version('beta')
	.filter('riskLevel eq microsoft.graph.riskLevel'medium'')
	.get();

```