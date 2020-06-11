---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Groups["{id}"].Members
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Pr")
	.Select("displayName,id")
	.OrderBy("displayName ")
	.GetAsync();

```