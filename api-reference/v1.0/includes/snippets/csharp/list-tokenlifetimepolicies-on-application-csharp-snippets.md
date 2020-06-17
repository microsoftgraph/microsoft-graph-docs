---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tokenLifetimePolicies = await graphClient.Applications["{id}"].TokenLifetimePolicies
	.Request()
	.GetAsync();

```