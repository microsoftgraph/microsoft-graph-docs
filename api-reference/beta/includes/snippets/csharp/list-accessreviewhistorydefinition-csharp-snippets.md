---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var historyDefinitions = await graphClient.IdentityGovernance.AccessReviews.HistoryDefinitions
	.Request()
	.GetAsync();

```