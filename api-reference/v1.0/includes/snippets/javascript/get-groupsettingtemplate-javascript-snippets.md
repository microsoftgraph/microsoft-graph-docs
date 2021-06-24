---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groupSettingTemplate = await client.api('/groupSettingTemplates/{id}')
	.get();

```