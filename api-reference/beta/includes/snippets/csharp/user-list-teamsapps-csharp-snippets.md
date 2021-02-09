---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userScopeTeamsAppInstallation = await graphClient.Users["{id}"].Teamwork.InstalledApps["{id}"]
	.Request()
	.GetAsync();

```