---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secureScore = await client.api('/security/secureScores/{id}')
	.get();

```