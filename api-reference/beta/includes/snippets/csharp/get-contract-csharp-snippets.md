---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contract = await graphClient.Contracts["{id}"]
	.Request()
	.GetAsync();

```