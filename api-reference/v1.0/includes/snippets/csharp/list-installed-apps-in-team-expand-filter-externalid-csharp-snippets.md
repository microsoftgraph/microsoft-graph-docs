---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Teams["{team-id}"].InstalledApps
	.Request()
	.Filter("teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'")
	.Expand("teamsAppDefinition")
	.GetAsync();

```