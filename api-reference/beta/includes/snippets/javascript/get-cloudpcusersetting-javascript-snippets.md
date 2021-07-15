---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcUserSetting = await client.api('/deviceManagement/virtualEndpoint/userSettings/556092f8-92f8-5560-f892-6055f8926055')
	.version('beta')
	.get();

```