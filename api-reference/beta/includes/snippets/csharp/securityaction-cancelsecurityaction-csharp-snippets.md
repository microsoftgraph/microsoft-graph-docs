---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Security.SecurityActions["{securityAction-id}"]
	.CancelSecurityAction()
	.Request()
	.PostAsync();

```