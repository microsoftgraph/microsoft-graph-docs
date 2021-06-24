---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
    '@odata.type': '#microsoft.graph.referenceAttachment',
    name: 'Personal pictures',
    sourceUrl: 'https://contoso.com/personal/mario_contoso_net/Documents/Pics',
    providerType: 'oneDriveConsumer',
    permission: 'Edit',
    isFolder: 'True'
};

await client.api('/me/events/AAMkAGE1M88AADUv0uAAAG=/attachments')
	.version('beta')
	.post(attachment);

```