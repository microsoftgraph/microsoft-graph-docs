---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let _boolean = await client.api('/sites/{siteId}/contentTypes/{contentTypeId}/isPublished')
	.version('beta')
	.get();

```