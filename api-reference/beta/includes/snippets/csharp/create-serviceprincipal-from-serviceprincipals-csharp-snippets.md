---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = new ServicePrincipal
{
	AppId = "65415bb1-9267-4313-bbf5-ae259732ee12"
};

await graphClient.ServicePrincipals
	.Request()
	.AddAsync(servicePrincipal);

```