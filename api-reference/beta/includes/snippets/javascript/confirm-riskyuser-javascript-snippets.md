---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const confirmCompromised = {
  userIds: [
    "29f270bb-4d23-4f68-8a57-dc73dc0d4caf"
  ]
};

let res = await client.api('/identityProtection/riskyUsers/confirmCompromised')
	.version('beta')
	.post(confirmCompromised);

```