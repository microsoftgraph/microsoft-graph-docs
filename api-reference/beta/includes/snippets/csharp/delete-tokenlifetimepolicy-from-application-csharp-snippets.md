---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Applications["{id}"].TokenLifetimePolicies["{id}"].Reference
	.Request()
	.DeleteAsync();

```