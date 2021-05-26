---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var templates = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Templates
	.Request()
	.GetAsync();

```