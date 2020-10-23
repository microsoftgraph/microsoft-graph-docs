---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityActions = await graphClient.Security.SecurityActions
	.Request()
	.GetAsync();

```