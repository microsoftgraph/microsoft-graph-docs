---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contact = {
    emailAddresses:[
        {
            type:"personal",
            name:"Pavel Bansky",
            address:"pavelb@adatum.onmicrosoft.com"
        },
        {
          address: "pavelb@fabrikam.onmicrosoft.com",
          name: "Pavel Bansky",
          type: "other",
          otherLabel: "Volunteer work"
        }
    ]
};

let res = await client.api('/me/contacts/AAMkADh6v5AAAvgTCEAAA=')
	.version('beta')
	.update(contact);

```