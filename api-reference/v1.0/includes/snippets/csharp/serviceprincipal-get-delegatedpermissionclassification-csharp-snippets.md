---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delegatedPermissionClassifications = await graphClient.ServicePrincipals["{servicePrincipal-id}"].DelegatedPermissionClassifications
	.Request()
	.GetAsync();

```