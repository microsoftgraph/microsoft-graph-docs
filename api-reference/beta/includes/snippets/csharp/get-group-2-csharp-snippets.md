---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.TermStore.Groups
	.Request()
	.GetAsync();

```