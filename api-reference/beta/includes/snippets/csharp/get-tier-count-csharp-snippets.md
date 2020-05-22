---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var microsoft.graph.group = await graphClient.Users["{id}"].TransitiveMemberOf.Microsoft.graph.group
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:tier")
	.Select( e => new {
			 e.DisplayName,
			 e.Id 
			 })
	.OrderBy("displayName ")
	.GetAsync();

```