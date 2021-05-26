---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fieldValueSet = {
    Color: 'Fuchsia',
    Quantity: 934
};

await client.api('/sites/{site-id}/lists/{list-id}/items/{item-id}/fields')
	.update(fieldValueSet);

```