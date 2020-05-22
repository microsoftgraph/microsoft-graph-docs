---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.Groups
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Video")
	.GetAsync();

```