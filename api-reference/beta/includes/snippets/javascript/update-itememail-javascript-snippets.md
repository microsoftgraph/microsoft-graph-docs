---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemEmail = {
  address: "address-value",
  displayName: "displayName-value",
  type: "type-value"
};

let res = await client.api('/me/profile/emails/{id}')
	.version('beta')
	.update(itemEmail);

```