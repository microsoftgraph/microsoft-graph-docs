---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcDeviceImage = {
  @odata.type: "#microsoft.graph.cloudPcDeviceImage",
  displayName: "Display Name value",
  osBuildNumber: "OS Build Number value",
  operatingSystem: "Operating System value",
  version: "Version value",
  sourceImageResourceId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"
};

let res = await client.api('/deviceManagement/virtualEndpoint/deviceImages')
	.version('beta')
	.post(cloudPcDeviceImage);

```