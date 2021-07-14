---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Groups["{group-id}"].TransitiveMembers
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Filter("startswith(displayName, 'a')")
	.OrderBy("displayName")
	.GetAsync();

```