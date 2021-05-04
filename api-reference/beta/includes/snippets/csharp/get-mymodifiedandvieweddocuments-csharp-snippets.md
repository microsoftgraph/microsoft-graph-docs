---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var used = await graphClient.Me.Insights.Used
	.Request()
	.OrderBy("LastUsed/LastAccessedDateTime desc")
	.GetAsync();

```