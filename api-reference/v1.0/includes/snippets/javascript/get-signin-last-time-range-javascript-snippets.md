---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/users?filter=signInActivity/lastSignInDateTime%20le%202019-06-01T00:00:00Z')
	.filter('signInActivity/lastSignInDateTime le 2019-06-01T00:00:00Z')
	.get();

```