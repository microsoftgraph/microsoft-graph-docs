---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const administrativeUnit = {
  displayName: 'displayName-value',
  description: 'description-value',
  visibility: 'visibility-value'
};

await client.api('/administrativeUnits/{id}')
	.version('beta')
	.update(administrativeUnit);

```