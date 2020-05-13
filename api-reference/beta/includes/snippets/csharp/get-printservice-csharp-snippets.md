---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printService = await graphClient.Print.Services["{id}"]
	.Request()
	.GetAsync();

```