---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userAccountInformation = {
  ageGroup: "ageGroup-value",
  countryCode: "countryCode-value",
  preferredLanguageTag: {
    locale: "locale-value",
    displayName: "displayName-value"
  },
  userPrincipalName: "userPrincipalName-value"
};

let res = await client.api('/me/profile/account/{id}')
	.version('beta')
	.update(userAccountInformation);

```