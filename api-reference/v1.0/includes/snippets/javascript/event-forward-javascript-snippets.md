---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const forward = {
  ToRecipients: [
      {
        emailAddress: {
          address: 'danas@contoso.onmicrosoft.com',
          name: 'Dana Swope'
        }
      }
     ],
  Comment: 'Dana, hope you can make this meeting.' 
};

await client.api('/me/events/{id}/forward')
	.post(forward);

```