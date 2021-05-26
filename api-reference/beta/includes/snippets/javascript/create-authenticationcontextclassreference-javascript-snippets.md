---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationContextClassReference = {
    id: 'c1',
    displayName: 'Contoso medium',
    description: 'Medium protection level defined for Contoso policy',
    isAvailable: true
};

await client.api('/identity/conditionalAccess/authenticationContextClassReferences')
	.version('beta')
	.post(authenticationContextClassReference);

```