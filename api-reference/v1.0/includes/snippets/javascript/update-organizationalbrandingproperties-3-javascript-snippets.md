---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const organizationalBranding = {
    backgroundColor: '#FFFF33'
};

await client.api('/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding')
	.update(organizationalBranding);

```