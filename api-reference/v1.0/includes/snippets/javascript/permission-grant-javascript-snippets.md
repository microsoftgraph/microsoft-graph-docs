---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  recipients: [
    {
      email: 'john@contoso.com'
    },
    {
      email: 'ryan@external.com'
    }
  ],
  roles: ['read']
};

await client.api('/shares/{encoded-sharing-url}/permission/grant')
	.post(permission);

```