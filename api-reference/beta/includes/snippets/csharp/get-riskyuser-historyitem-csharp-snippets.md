---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUserHistoryItem = await graphClient.IdentityProtection.RiskyUsers["41a31b00-3b3b-42d9-8f1c-6d4f14e74c69"].History["41a31b00-3b3b-42d9-8f1c-6d4f14e74c69"]
	.Request()
	.GetAsync();

```