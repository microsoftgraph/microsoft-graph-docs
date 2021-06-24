---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"]
	.Request()
	.DeleteAsync();

```