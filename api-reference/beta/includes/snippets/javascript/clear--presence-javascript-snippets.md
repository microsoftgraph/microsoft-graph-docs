---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const clearPresence = {
  sessionId: '22553876-f5ab-4529-bffb-cfe50aa89f87'
};

await client.api('/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/clearPresence')
	.version('beta')
	.post(clearPresence);

```