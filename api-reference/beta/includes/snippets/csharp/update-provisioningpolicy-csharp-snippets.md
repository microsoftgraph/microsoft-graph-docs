---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy
{
	DisplayName = "Display Name value",
	Description = "Description value",
	OnPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
	ImageId = "Image ID value",
	ImageDisplayName = "Image Display Name value",
	ImageType = CloudPcProvisioningPolicyImageType.Custom
};

await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{id}"]
	.Request()
	.UpdateAsync(cloudPcProvisioningPolicy);

```