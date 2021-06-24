---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  receivedDateTime: 'datetime-value',
  sentDateTime: 'datetime-value',
  hasAttachments: true,
  subject: 'subject-value',
  body: {
    contentType: '',
    content: 'content-value'
  },
  bodyPreview: 'bodyPreview-value'
};

await client.api('/me/mailFolders/{id}/messages')
	.post(message);

```