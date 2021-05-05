---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemPatent = {
  number: 'USPTO-3954432633',
  webUrl: 'https://patents.gov/3954432633'
};

await client.api('/users/{userId}/profile/patents/{id}')
	.version('beta')
	.update(itemPatent);

```