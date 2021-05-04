---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let presence = await client.api('/users/66825e03-7ef5-42da-9069-724602c31f6b/presence')
	.get();

```