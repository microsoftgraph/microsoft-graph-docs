---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var owners = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Owners
	.Request()
	.GetAsync();

```