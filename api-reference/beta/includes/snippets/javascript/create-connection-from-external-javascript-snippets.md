---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalConnection = {
  id: "contosohr",
  name: "Contoso HR",
  description: "Connection to index Contoso HR system"
};

let res = await client.api('/external/connections')
	.version('beta')
	.post(externalConnection);

```