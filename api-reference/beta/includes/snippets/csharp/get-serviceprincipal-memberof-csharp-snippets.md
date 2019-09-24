---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberOf = await graphClient.ServicePrincipals["{id}"].MemberOf
	.Request()
	.GetAsync();

```