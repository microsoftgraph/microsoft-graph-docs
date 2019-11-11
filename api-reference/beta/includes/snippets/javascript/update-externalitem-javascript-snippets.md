---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalItem = {
  acl: [
    {
      type: "user",
      value: "49103559-feac-4575-8b94-254814dfca72",
      accessType: "grant",
      identitySource: "Azure Active Directory"
    }
  ]
};

let res = await client.api('/connections/contosohr/items/TSP228082938')
	.version('beta')
	.update(externalItem);

```