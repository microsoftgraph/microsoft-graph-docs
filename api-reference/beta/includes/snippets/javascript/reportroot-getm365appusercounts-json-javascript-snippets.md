---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/reports/getM365AppUserCounts(period='D7')/content')
	.version('beta')
	.get();

```