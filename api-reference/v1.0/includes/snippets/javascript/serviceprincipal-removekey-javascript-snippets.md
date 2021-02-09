---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const removeKey = {
    keyId: "f0b0b335-1d71-4883-8f98-567911bfdca6",
    proof:"eyJ0eXAiOiJ..."
};

let res = await client.api('/servicePrincipals/{id}/removeKey')
	.post(removeKey);

```