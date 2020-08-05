---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var int32 = await graphClient.Users.$count
	.Request()
	.Header("ConsistencyLevel","eventual")
	.GetAsync();

```