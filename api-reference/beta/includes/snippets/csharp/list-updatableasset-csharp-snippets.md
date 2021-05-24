---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var exclusions = await graphClient.Admin.Windows.Updates.Deployments["{windowsUpdates.deployment-id}"].Audience.Exclusions
	.Request()
	.GetAsync();

```