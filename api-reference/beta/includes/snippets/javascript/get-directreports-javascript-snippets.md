---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directReports = await client.api('/me/directReports')
	.version('beta')
	.get();

```