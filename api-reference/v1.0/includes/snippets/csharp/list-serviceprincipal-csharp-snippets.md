---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var serviceprincipals = await graphClient.Serviceprincipals
	.Request()
	.GetAsync();

```