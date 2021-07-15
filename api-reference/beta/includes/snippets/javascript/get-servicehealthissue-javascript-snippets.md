---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceHealthIssue = await client.api('/admin/serviceAnnouncement/issues/MO226784')
	.version('beta')
	.get();

```