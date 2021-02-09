---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcProvisioningPolicy = await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{id}"]
	.Request()
	.Expand("assignments")
	.GetAsync();

```