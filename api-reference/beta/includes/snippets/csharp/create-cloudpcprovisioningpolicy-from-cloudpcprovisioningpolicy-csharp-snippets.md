---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy
{
	DisplayName = "Display Name value",
	Description = "Description value",
	OnPremisesConnectionId = "6bf90392-5fea-459a-9e9d-a2484abbffff",
	ImageId = "Image ID value",
	ImageDisplayName = "Image Display Name value",
	ImageType = CloudPcProvisioningPolicyImageType.Gallery
};

await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies
	.Request()
	.AddAsync(cloudPcProvisioningPolicy);

```