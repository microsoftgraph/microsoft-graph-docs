---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.ConditionalAccess.NamedLocations["1c4427fd-0885-4a3d-8b23-09a899ffa959"]
	.Request()
	.DeleteAsync();

```