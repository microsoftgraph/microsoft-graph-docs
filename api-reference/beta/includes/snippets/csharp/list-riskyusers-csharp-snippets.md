---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUsers = await graphClient.RiskyUsers
	.Request()
	.GetAsync();

```