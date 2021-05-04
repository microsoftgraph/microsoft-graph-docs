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
      email: 'ryan@contoso.com'
    }
  ],
  message: 'Here\'s the file that we\'re collaborating on.',
  requireSignIn: true,
  sendInvitation: true,
  roles: [ 'write' ],
  password: 'password123',
  expirationDateTime: '2018-07-15T14:00:00.000Z'
};

await client.api('/me/drive/items/{item-id}/invite')
	.post(permission);

```