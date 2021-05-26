---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignments = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments
	.Request()
	.GetAsync();

```