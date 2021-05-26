---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscription = {
   expirationDateTime: '2016-11-22T18:23:45.9356913Z'
};

await client.api('/subscriptions/{id}')
	.update(subscription);

```