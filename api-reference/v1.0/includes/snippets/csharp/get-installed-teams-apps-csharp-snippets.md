---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppInstallation = await graphClient.Teams["{id}"].InstalledApps["{id}"]
	.Request()
	.GetAsync();

```