---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
  @odata.type: "#Microsoft.OutlookServices.ItemAttachment",
  name: "name-value",
  item: {
    @odata.type: "microsoft.graph.message"
  }
};

let res = await client.api('/me/events/{id}/attachments')
	.version('beta')
	.post(attachment);

```