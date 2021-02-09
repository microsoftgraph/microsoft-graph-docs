---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printOperation = await graphClient.Print.Operations["{id}"]
	.Request()
	.GetAsync();

```