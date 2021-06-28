---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/15c1a2d5-9101-44b2-83ab-885db8a647ca'
};

await client.api('/directoryRoles/fe8f10bf-c9c2-47eb-95cb-c26cc85f1830/members/$ref')
	.post(directoryObject);

```