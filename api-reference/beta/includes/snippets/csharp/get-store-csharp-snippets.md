---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var store = await graphClient.TermStore
	.Request()
	.GetAsync();

```