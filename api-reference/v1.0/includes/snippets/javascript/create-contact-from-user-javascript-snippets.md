---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contact = {
  givenName: 'Pavel',
  surname: 'Bansky',
  emailAddresses: [
    {
      address: 'pavelb@fabrikam.onmicrosoft.com',
      name: 'Pavel Bansky'
    }
  ],
  businessPhones: [
    '+1 732 555 0102'
  ]
};

await client.api('/me/contacts')
	.post(contact);

```