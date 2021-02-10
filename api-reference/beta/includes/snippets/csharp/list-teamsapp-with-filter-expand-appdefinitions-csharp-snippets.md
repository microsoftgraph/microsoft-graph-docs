---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsApps = await graphClient.AppCatalogs.TeamsApps
	.Request()
	.Filter("id eq '876df28f-2e78-423b-94a5-44181bd0e225'")
	.Expand("appDefinitions")
	.GetAsync();

```