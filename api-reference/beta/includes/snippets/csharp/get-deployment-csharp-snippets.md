---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deployment = await graphClient.Admin.Windows.Updates.Deployments["{windowsUpdates.deployment-id}"]
	.Request()
	.GetAsync();

```