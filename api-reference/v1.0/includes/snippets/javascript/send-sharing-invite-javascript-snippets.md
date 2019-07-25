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
      email: "ryan@contoso.com"
    }
  ],
  message: "Here's the file that we're collaborating on.",
  requireSignIn: true,
  sendInvitation: true,
  roles: [ "write" ]
};

let res = await client.api('/me/drive/items/{item-id}/invite')
	.post(permission);

```