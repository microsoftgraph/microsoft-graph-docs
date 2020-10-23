---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const invitation = {
  invitedUserEmailAddress: "yyy@test.com",
  inviteRedirectUrl: "https://myapp.contoso.com"
};

let res = await client.api('/invitations')
	.version('beta')
	.post(invitation);

```