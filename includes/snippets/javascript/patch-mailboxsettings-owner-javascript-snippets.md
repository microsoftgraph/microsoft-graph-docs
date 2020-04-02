---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxSettings = {
  delegateMeetingMessageDeliveryOptions: "sendToDelegateAndPrincipal"
};

let res = await client.api('/users/AlexW@contoso.OnMicrosoft.com/mailboxsettings')
	.version('beta')
	.update(mailboxSettings);

```