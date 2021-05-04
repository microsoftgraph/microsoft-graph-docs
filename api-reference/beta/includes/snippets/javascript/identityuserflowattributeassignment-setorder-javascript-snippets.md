---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setOrder = {
  newAssignmentOrder: {
    order: [
        'City',
        'extension_GUID_ShoeSize'
    ]
  }
};

await client.api('/identity/b2cUserFlows/{id}/userAttributeAssignments/setOrder')
	.version('beta')
	.post(setOrder);

```