---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const store = {
  defaultLanguageTag: "en-US"
};

let res = await client.api('/termStore')
	.version('beta')
	.update(store);

```