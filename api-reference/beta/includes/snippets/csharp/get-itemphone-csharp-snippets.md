---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemPhone = await graphClient.Me.Profile.Phones["{id}"]
	.Request()
	.GetAsync();

```