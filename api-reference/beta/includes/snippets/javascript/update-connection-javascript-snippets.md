---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalConnection = {
  name: "Contoso HR Service Tickets",
  description: "Connection to index HR service tickets"
};

let res = await client.api('/connections/contosohr')
	.version('beta')
	.update(externalConnection);

```