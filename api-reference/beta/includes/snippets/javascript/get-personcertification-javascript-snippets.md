---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let personCertification = await client.api('/me/profile/certifications/{id}')
	.version('beta')
	.get();

```