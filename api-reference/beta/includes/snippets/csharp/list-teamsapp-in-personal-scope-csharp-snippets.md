---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsApps = await graphClient.AppCatalogs.TeamsApps
	.Request()
	.Filter("appDefinitions/any(a:a/allowedInstallationScopes has 'personal')")
	.Expand("appDefinitions($select=id,displayName,allowedInstallationScopes)")
	.GetAsync();

```