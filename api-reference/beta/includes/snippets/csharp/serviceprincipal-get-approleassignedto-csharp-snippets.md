---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignedTo = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignedTo
	.Request()
	.GetAsync();

```