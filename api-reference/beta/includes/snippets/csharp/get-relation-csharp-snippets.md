---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var relations = await graphClient.TermStore.Sets["{setId}"].Relations
	.Request()
	.GetAsync();

```