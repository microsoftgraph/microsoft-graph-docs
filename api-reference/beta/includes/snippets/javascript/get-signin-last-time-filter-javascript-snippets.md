---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/users')
	.version('beta')
	.filter('startswith(displayName,'Eric')')
	.select('displayName,signInActivity')
	.get();

```