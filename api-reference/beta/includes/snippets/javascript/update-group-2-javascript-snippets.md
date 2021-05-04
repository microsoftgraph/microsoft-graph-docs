---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  assignedLabels: 
  [
    {
        labelId: '45cd0c48-c540-4358-ad79-a3658cdc5b88'
    }
  ]
};

await client.api('/groups/{id}')
	.version('beta')
	.update(group);

```