---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.OnPremisesPublishingProfiles["provisioning"].PublishedResources["1234b780-965f-4149-85c5-a8c73e58b67d"].AgentGroups["8832388F-3814-4952-B288-FFB62081FE25"].Reference
	.Request()
	.DeleteAsync();

```