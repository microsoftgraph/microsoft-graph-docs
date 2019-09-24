---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
  @odata.type: "microsoft.graph.fileAttachment",
  name: "name-value",
  contentType: "contentType-value",
  isInline: false,
  contentLocation: "contentLocation-value",
  contentBytes: "base64-contentBytes-value"
};

let res = await client.api('/me/messages/{id}/attachments')
	.post(attachment);

```