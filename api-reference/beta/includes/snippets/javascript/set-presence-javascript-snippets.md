---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setPresence = {
  sessionId: '22553876-f5ab-4529-bffb-cfe50aa89f87',
  availability: 'Available',
  activity: 'Available',
  expirationDuration: 'PT1H'
};

await client.api('/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setPresence')
	.version('beta')
	.post(setPresence);

```