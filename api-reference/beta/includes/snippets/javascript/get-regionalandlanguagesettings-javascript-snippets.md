---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let regionalAndLanguageSettings = await client.api('/me/settings/regionalAndLanguageSettings')
	.version('beta')
	.get();

```