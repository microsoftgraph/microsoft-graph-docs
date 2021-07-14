---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Groups["{group-id}"].TransitiveMembers
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:tier")
	.Select("displayName,id")
	.OrderBy("displayName")
	.GetAsync();

```