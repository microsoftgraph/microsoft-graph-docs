---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const create = {
  displayName: "Test Printer",
  manufacturer: "Test Printer Manufacturer",
  model: "Test Printer Model",
  physicalDeviceId: null,
  hasPhysicalDevice: false,
  certificateSigningRequest: { 
    content: "{content}",
    transportKey: "{sampleTransportKey}"
  },
  connectorId: null
};

let res = await client.api('/print/printers/create')
	.version('beta')
	.post(create);

```