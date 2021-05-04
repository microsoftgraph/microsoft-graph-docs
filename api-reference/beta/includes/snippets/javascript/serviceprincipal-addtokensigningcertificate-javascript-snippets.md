---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const selfSignedCertificate = {
    displayName: 'CN=customDisplayName',
    endDateTime: '2024-01-25T00:00:00Z'
};

await client.api('/servicePrincipals/7c8d4399-b4bf-413a-8b6a-c577790cae7d/addTokenSigningCertificate')
	.version('beta')
	.post(selfSignedCertificate);

```