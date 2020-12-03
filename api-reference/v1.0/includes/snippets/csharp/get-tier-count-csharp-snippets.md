---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Users["{id}"].TransitiveMemberOf
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:tier")
	.Select("displayName,id")
	.OrderBy("displayName ")
	.GetAsync();

```