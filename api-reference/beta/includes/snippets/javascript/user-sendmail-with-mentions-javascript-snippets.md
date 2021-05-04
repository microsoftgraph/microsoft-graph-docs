---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendMail = {
  Message: {
    subject: 'Project kickoff',
    toRecipients: [
      {
          emailAddress: {
              name: 'Samantha Booth',
              address: 'samanthab@contoso.onmicrosoft.com'
          }
      }
    ],
    mentions: [
      {
        mentioned: {
          name: 'Dana Swope',
          address: 'danas@contoso.onmicrosoft.com'
         }
      }
    ]
  }
};

await client.api('/me/sendMail')
	.version('beta')
	.post(sendMail);

```