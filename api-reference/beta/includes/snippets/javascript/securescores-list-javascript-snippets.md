---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secureScores = await client.api('/security/secureScores')
	.version('beta')
	.top(1)
	.get();

```