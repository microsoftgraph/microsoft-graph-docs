---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let administrativeUnits = await client.api('/administrativeUnits')
	.version('beta')
	.get();

```