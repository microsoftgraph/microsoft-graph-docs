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
  onPremisesConnectionId: "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
  imageId: "Image ID value",
  imageDisplayName: "Image Display Name value",
  imageType: "custom"
};

let res = await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/{id}')
	.version('beta')
	.update(cloudPcProvisioningPolicy);

```