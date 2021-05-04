---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sites = await client.api('/sites?search=%7Bquery%7D')
	.get();

```