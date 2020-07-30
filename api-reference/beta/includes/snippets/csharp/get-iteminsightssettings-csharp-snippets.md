---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemInsights = await graphClient.Organization["{organizationId}"].Settings.ItemInsights
	.Request()
	.GetAsync();

```