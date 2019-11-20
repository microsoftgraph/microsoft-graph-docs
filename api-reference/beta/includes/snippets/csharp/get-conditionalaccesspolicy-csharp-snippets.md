---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conditionalAccessPolicy = await graphClient.ConditionalAccess.Policies["{id}"]
	.Request()
	.GetAsync();

```