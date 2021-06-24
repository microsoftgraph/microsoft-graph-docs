---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var jobs = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs
	.Request()
	.GetAsync();

```