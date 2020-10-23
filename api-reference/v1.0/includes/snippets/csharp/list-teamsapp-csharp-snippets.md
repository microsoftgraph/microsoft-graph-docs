---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsApps = await graphClient.AppCatalogs.TeamsApps
	.Request()
	.Filter("id eq 'b1c5353a-7aca-41b3-830f-27d5218fe0e5'")
	.GetAsync();

```