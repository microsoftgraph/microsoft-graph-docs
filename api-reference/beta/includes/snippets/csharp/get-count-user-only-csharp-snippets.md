---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var int32 = await graphClient.Groups["{id}"].Members.$count
	.Request()
	.Header("ConsistencyLevel","eventual")
	.GetAsync();

```