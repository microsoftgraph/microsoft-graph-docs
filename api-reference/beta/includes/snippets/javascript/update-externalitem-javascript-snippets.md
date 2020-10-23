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
      type: "everyone",
      value: "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
      accessType: "grant",
      identitySource: "azureActiveDirectory"
    }
  ]
};

let res = await client.api('/connections/contosohr/items/TSP228082938')
	.version('beta')
	.update(externalItem);

```