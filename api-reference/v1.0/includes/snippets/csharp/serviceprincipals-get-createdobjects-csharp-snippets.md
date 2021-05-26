---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var createdObjects = await graphClient.ServicePrincipals["{servicePrincipal-id}"].CreatedObjects
	.Request()
	.GetAsync();

```