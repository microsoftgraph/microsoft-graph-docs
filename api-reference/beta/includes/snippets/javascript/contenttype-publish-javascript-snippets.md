---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/sites/{siteId}/contentTypes/{contentTypeId}/publish')
	.version('beta')
	.post();

```