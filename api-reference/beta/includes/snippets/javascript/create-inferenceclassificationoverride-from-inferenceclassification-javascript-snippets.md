---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const inferenceClassificationOverride = {
  classifyAs: 'focused',
  senderEmailAddress: {
    name: 'Samantha Booth',
    address: 'samanthab@adatum.onmicrosoft.com'
  }
};

await client.api('/me/inferenceClassification/overrides')
	.version('beta')
	.post(inferenceClassificationOverride);

```