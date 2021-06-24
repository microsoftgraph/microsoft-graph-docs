---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  message: {  
    toRecipients: [
      {
        emailAddress: {
          address: 'samanthab@contoso.onmicrosoft.com',
          name: 'Samantha Booth'
        }
      },
      {
        emailAddress: {
          address: 'randiw@contoso.onmicrosoft.com',
          name: 'Randi Welch'
        }
      }
     ]
  },
  comment: 'Samantha, Randi, would you name the group if the project is approved, please?' 
};

await client.api('/me/messages/AAMkADA1MTAAAAqldOAAA=/createReply')
	.version('beta')
	.post(message);

```