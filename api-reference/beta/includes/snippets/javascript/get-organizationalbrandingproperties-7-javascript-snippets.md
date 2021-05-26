---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const organizationalBrandingLocalization = {
    backgroundColor: '#00000F',
    id: 'fr'
};

await client.api('/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations')
	.version('beta')
	.post(organizationalBrandingLocalization);

```