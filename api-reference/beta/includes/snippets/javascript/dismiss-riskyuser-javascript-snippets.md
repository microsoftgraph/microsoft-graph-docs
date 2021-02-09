---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const dismiss = {
  userIds: [
    "04487ee0-f4f6-4e7f-8999-facc5a30e232"
  ]
};

let res = await client.api('/identityProtection/riskyUsers/dismiss')
	.version('beta')
	.post(dismiss);

```