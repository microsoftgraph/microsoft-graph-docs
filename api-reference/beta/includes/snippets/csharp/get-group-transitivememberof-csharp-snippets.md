---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transitiveMemberOf = await graphClient.Groups["{id}"].TransitiveMemberOf
	.Request()
	.GetAsync();

```