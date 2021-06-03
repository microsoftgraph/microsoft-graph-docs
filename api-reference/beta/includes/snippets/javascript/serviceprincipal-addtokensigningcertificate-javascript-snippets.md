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

await client.api('/servicePrincipals/004375c5-6e2e-4dec-95e3-626838cb9f80/addTokenSigningCertificate')
	.version('beta')
	.post(selfSignedCertificate);

```