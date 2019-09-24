---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contact = {
  givenName: "Pavel",
  surname: "Bansky",
  emailAddresses: [
    {
      address: "pavelb@contoso.onmicrosoft.com",
      name: "Pavel Bansky",
      type: "personal"
    },
    {
      address: "pavelb@fabrikam.onmicrosoft.com",
      name: "Pavel Bansky",
      type: "other",
      otherLabel: "Volunteer work"
    }
  ],
  "phones" : [
    {
      number: "+1 732 555 0102",
      type: "business"
    }
  ]
};

let res = await client.api('/me/contacts')
	.version('beta')
	.post(contact);

```