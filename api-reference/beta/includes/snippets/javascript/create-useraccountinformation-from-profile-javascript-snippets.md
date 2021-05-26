---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userAccountInformation = {
  allowedAudiences: 'organization',
  countryCode: 'NO',
};

await client.api('/me/profile/account')
	.version('beta')
	.post(userAccountInformation);

```