---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  receivedDateTime: '2016-10-19T10:37:00Z',
  sentDateTime: '2016-10-19T10:37:00Z',
  hasAttachments: true,
  subject: 'subject-value',
  body: {
    contentType: '',
    content: 'content-value'
  },
  bodyPreview: 'bodyPreview-value'
};

await client.api('/me/mailFolders/{id}/messages')
	.version('beta')
	.post(message);

```