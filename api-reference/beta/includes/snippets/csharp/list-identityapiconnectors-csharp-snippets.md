---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var apiConnectors = await graphClient.Identity.ApiConnectors
	.Request()
	.GetAsync();

```