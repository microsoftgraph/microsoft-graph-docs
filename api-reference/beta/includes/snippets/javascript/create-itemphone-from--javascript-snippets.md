---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemPhone = {
  displayName: "Car Phone",
  number: "+7 499 342 22 13"
};

let res = await client.api('/me/profile/phones')
	.version('beta')
	.post(itemPhone);

```