---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extensionProperty = {
    name: "extensionName",
    dataType: "string",
    targetObjects: [
    	"Application"
    ]
};

let res = await client.api('/applications/{id}/extensionProperties')
	.post(extensionProperty);

```