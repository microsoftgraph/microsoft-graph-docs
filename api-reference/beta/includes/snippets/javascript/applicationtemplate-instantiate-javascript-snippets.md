---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applicationServicePrincipal = {
  displayName: "My custom name"
};

let res = await client.api('/applicationTemplates/{id}/instantiate')
	.version('beta')
	.post(applicationServicePrincipal);

```