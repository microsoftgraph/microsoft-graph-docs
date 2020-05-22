---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var microsoft.graph.user = await graphClient.Groups["{id}"].Members.Microsoft.graph.user
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Pr")
	.Select( e => new {
			 e.DisplayName,
			 e.Id 
			 })
	.OrderBy("displayName ")
	.GetAsync();

```