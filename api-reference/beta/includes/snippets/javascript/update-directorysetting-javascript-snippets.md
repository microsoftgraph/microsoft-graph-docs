---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directorySetting = {
  values: [
    {
      name: 'name-value',
      value: 'value-value'
    }
  ]
};

await client.api('/settings/{id}')
	.version('beta')
	.update(directorySetting);

```