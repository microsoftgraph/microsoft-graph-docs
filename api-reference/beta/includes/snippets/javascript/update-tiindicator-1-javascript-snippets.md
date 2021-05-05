---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tiIndicator = {
  description: 'description-updated',
};

await client.api('/security/tiIndicators/{id}')
	.version('beta')
	.update(tiIndicator);

```