---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityAction = await graphClient.Security.SecurityActions["{securityAction-id}"]
	.Request()
	.GetAsync();

```