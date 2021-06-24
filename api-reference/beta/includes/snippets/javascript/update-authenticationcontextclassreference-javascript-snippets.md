---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationContextClassReference = {
   value: 
    [
      {
         displayName: 'Contoso trusted locations',
        description: 'Access is only allowed from trusted locations',
        isAvailable: true
      }
    ]
};

await client.api('/identity/conditionalAccess/authenticationContextClassReferences/c1')
	.version('beta')
	.update(authenticationContextClassReference);

```