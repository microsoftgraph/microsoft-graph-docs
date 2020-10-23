---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/bitlocker/recoveryKeys/b465e4e8-e4e8-b465-e8e4-65b4e8e465b4')
	.version('beta')
	.select('key')
	.get();

```