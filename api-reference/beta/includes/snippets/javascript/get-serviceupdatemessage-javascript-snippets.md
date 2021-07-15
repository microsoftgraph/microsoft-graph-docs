---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceUpdateMessage = await client.api('/admin/serviceAnnouncement/messages/MC172851')
	.version('beta')
	.get();

```