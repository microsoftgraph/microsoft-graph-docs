---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Subscriptions["7f105c7d-2dc5-4530-97cd-4e7ae6534c07"]
	.Request()
	.DeleteAsync();

```