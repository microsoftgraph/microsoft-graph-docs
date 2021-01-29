---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcProvisioningPolicy = {
  @odata.type: "#microsoft.graph.cloudPcProvisioningPolicy",
  displayName: "Display Name value",
  description: "Description value",
  onPremisesConnectionId: "6bf90392-5fea-459a-9e9d-a2484abbffff",
  imageId: "Image ID value",
  imageDisplayName: "Image Display Name value",
  imageType: "gallery"
};

let res = await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies')
	.version('beta')
	.post(cloudPcProvisioningPolicy);

```