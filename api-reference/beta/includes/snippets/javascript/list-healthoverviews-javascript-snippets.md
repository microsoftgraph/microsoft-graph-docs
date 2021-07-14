---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let healthOverviews = await client.api('/admin/serviceAnnouncement/healthOverviews')
	.version('beta')
	.get();

```