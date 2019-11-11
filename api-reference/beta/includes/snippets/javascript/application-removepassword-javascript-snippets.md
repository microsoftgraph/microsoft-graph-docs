---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const removePassword = {
    keyId: "f0b0b335-1d71-4883-8f98-567911bfdca6"
};

let res = await client.api('/applications/{id}/removePassword')
	.version('beta')
	.post(removePassword);

```