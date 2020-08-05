---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipals = await graphClient.ServicePrincipals
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Team")
	.GetAsync();

```