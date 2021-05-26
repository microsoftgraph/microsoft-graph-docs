---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
  '@odata.type': '#microsoft.graph.fileAttachment',
  name: 'smile',
  contentBytes: 'R0lGODdhEAYEAA7'
};

await client.api('/me/messages/AAMkpsDRVK/attachments')
	.post(attachment);

```