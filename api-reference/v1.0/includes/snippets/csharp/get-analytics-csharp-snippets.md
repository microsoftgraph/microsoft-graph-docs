---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemAnalytics = await graphClient.Drives["{drive-id}"].Items["{item-id}"].Analytics
	.Request()
	.GetAsync();

```