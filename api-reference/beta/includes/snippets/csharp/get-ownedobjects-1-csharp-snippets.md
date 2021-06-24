---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ownedObjects = await graphClient.ServicePrincipals["{servicePrincipal-id}"].OwnedObjects
	.Request()
	.GetAsync();

```