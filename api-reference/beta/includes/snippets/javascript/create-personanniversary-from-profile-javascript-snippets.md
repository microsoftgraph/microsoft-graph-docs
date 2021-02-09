---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personAnniversary = {
  type: "birthday",
  date: "1980-01-08"
};

let res = await client.api('/me/profile/anniversaries')
	.version('beta')
	.post(personAnniversary);

```