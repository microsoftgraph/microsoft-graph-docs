---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transitiveMemberOf = await graphClient.ServicePrincipals["{id}"].TransitiveMemberOf
	.Request()
	.GetAsync();

```