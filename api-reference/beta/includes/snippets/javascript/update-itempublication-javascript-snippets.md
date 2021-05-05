---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemPublication = {
  publisher: 'International Association of Branding Management Publishing',
  thumbnailUrl: 'https://iabm.io/sdhdfhsdhshsd.jpg',
};

await client.api('/users/{userId}/profile/publications/{id}')
	.version('beta')
	.update(itemPublication);

```