---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personAward = {
  issuingAuthority: 'International Association of Branding Management',
  thumbnailUrl: 'https://iabm.io/sdhdfhsdhshsd.jpg'
};

await client.api('/users/{userId}/profile/awards/{personAwardId}')
	.version('beta')
	.update(personAward);

```