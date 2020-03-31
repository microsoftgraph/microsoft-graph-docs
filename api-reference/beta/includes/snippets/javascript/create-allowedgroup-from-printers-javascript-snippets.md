---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printIdentity = {
  @odata.id: "https://graph.microsoft.com/beta/groups/{id}"
};

let res = await client.api('/print/printers/{id}/allowedGroups/$ref')
	.version('beta')
	.post(printIdentity);

```