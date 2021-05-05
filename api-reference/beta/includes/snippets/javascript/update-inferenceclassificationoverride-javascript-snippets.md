---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const inferenceClassificationOverride = {
  classifyAs: 'focused'
};

await client.api('/me/inferenceClassification/overrides/{id}')
	.version('beta')
	.update(inferenceClassificationOverride);

```