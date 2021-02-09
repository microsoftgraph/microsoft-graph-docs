---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemAddress = await graphClient.Me.Profile.Addresses["{id}"]
	.Request()
	.GetAsync();

```