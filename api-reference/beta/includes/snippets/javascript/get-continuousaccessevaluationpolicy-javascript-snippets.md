---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let continuousAccessEvaluationPolicy = await client.api('/identity/continuousAccessEvaluationPolicy')
	.version('beta')
	.get();

```