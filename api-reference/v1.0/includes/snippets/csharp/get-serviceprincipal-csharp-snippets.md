---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = await graphClient.ServicePrincipals["{id}"]
	.Request()
	.GetAsync();

```