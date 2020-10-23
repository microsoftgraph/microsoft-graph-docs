---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Groups["{id}"].MemberOf
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Video")
	.OrderBy("displayName ")
	.GetAsync();

```