---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const languageProficiency = {
  allowedAudiences: "organization"
};

let res = await client.api('/me/profile/languages/{id}')
	.version('beta')
	.update(languageProficiency);

```