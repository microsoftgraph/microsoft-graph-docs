---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppInstallation = await graphClient.Teams["{team-id}"].InstalledApps["{teamsAppInstallation-id}"]
	.Request()
	.Expand("teamsAppDefinition")
	.GetAsync();

```