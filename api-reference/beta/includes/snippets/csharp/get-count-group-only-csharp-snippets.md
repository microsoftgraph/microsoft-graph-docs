---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var int32 = await graphClient.ServicePrincipals["{id}"].MemberOf.$count
	.Request()
	.Header("ConsistencyLevel","eventual")
	.GetAsync();

```