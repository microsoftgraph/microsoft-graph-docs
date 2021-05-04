---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directorySettingTemplates = await client.api('/directorySettingTemplates')
	.version('beta')
	.get();

```