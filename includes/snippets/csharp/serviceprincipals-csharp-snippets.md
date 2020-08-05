---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipals = await graphClient.ServicePrincipals["b00c693f-9658-4c06-bd1b-c402c4653dea"]
	.Request()
	.Select("AppRoles")
	.GetAsync();

var appRoles = servicePrincipals.AppRoles;

```