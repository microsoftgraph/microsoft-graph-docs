---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getApplicableContentTypesForList = await client.api('/sites/{siteId}/getApplicableContentTypesForList(listId='listId')')
	.version('beta')
	.get();

```