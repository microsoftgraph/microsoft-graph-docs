---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
  @odata.type: "#microsoft.graph.fileAttachment",
  name: "smile",
  contentBytes: "a0b1c76de9f7="
};

let res = await client.api('/me/messages/AAMkpsDRVK/attachments')
	.version('beta')
	.post(attachment);

```