---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkBot = await graphClient.AppCatalogs.TeamsApps["{teamsApp-id}"].AppDefinitions["{teamsAppDefinition-id}"].Bot
	.Request()
	.GetAsync();

```