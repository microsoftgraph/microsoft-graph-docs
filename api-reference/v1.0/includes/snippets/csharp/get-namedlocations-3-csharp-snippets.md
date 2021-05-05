---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var namedLocations = await graphClient.Identity.ConditionalAccess.NamedLocations
	.Request()
	.Filter("createdDateTime ge 2019-09-01T00:00:00Z")
	.GetAsync();

```