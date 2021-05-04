---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getSourceImages = await client.api('/deviceManagement/virtualEndpoint/deviceImages/getSourceImages')
	.version('beta')
	.get();

```