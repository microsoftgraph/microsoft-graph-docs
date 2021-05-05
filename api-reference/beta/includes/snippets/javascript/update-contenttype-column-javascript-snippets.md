---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const columnDefinition = {
  required: true,
  hidden: false,
  propagateChanges: false		
};

await client.api('/sites/{site-id}/contentTypes/{contentType-id}/columns/{column-id}')
	.version('beta')
	.update(columnDefinition);

```