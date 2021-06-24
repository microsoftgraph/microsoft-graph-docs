---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let certifications = await client.api('/me/profile/certifications')
	.version('beta')
	.get();

```