---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  subject: 'subject-value',
  body: {
    contentType: '',
    content: 'content-value'
  },
  inferenceClassification: 'other'
};

await client.api('/me/messages/{id}')
	.version('beta')
	.update(message);

```