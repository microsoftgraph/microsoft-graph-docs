---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var templates = await graphClient.ServicePrincipals["{id}"].Synchronization.Templates
	.Request()
	.GetAsync();

```