---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookCategory = {
  color: 'preset15'
};

await client.api('/me/outlook/masterCategories/bac262b7-485d-4739-b436-e31467d64fac')
	.update(outlookCategory);

```