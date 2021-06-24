---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alert = await client.api('/security/alerts/{alert_id}')
	.get();

```