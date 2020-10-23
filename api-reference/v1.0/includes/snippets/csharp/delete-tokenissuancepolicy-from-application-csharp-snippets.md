---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Applications["{id}"].TokenIssuancePolicies["{id}"].Reference
	.Request()
	.DeleteAsync();

```