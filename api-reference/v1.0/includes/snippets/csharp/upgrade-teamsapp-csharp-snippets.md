---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{id}"].InstalledApps["{id}"]
	.Upgrade()
	.Request()
	.PostAsync();

```