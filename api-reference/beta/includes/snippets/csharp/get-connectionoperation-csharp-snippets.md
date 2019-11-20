---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectionOperation = await graphClient.Connections["contosohr"].Operations["3ed1595a-4bae-43c2-acda-ef973e581323"]
	.Request()
	.GetAsync();

```