---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  accountEnabled: true,
  businessPhones: [
    "businessPhones-value"
  ],
  city: "city-value"
};

let res = await client.api('/me')
	.update({user : user});

```