---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  businessPhones: [
    "+1 425 555 0109"
  ],
  officeLocation: "18/2111"
};

let res = await client.api('/me')
	.update(user);

```