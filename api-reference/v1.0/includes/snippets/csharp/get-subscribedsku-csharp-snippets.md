---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscribedSku = await graphClient.SubscribedSkus["{subscribedSku-id}"]
	.Request()
	.GetAsync();

```