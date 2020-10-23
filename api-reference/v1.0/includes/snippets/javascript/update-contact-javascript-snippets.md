---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contact = {
  homeAddress: {
    street: "123 Some street",
    city: "Seattle",
    state: "WA",
    postalCode: "98121"
  },
  birthday: "1974-07-22"
};

let res = await client.api('/me/contacts/{id}')
	.update(contact);

```