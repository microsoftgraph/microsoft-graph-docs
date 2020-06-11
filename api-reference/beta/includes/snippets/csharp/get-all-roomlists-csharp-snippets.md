---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roomlist = await graphClient.Places
	.Request()
	.GetAsync();

```