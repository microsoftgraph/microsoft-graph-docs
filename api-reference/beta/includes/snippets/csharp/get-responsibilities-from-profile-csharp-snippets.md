---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var me = await graphClient.Me
	.Request()
	.Select("Responsibilities")
	.GetAsync();

var responsibilities = me.Responsibilities;

```