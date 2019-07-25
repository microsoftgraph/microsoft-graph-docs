---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = await graphClient.Subscriptions["{id}"]
	.Request()
	.GetAsync();

```