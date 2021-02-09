---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.UserFlowAttributes["{id}"]
	.Request()
	.DeleteAsync();

```