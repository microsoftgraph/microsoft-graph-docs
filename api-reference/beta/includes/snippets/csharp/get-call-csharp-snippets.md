---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = await graphClient.App.Calls["{id}"]
	.Request()
	.GetAsync();

```