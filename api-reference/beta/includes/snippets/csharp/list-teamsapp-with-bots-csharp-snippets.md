---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsApps = await graphClient.AppCatalogs.TeamsApps
	.Request()
	.Filter("appDefinitions/any(a:a/bot ne null)")
	.Expand("appDefinitions($expand=bot)")
	.GetAsync();

```