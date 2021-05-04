---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var namedLocation = await graphClient.Identity.ConditionalAccess.NamedLocations["{namedLocation-id}"]
	.Request()
	.GetAsync();

```