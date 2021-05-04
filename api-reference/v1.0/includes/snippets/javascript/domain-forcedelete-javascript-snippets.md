---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const forceDelete = {
  disableUserAccounts: true
};

await client.api('/domains/{id}/forceDelete')
	.post(forceDelete);

```