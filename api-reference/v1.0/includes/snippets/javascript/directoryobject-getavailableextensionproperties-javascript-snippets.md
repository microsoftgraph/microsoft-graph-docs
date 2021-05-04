---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extensionProperty = {
  isSyncedFromOnPremises: 'Boolean'
};

await client.api('/directoryObjects/getAvailableExtensionProperties')
	.post(extensionProperty);

```