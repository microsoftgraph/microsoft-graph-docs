---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsApps = await graphClient.AppCatalogs.TeamsApps
	.Request()
	.Filter("externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'")
	.GetAsync();

```