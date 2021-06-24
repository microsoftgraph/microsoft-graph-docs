---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUserHistoryItem = await graphClient.IdentityProtection.RiskyUsers["{riskyUser-id}"].History["{riskyUserHistoryItem-id}"]
	.Request()
	.GetAsync();

```