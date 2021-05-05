---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secureScores = await client.api('/security/secureScores')
	.top(1)
	.get();

```