---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePlanId = Guid.Parse("28f42d6f-8034-4a0f-9d8a-a218a63b3299");

var skuId = Guid.Parse("465a2a90-5e59-456d-a7b8-127b9fb2e484");

await graphClient.Me
	.ActivateServicePlan(servicePlanId,skuId)
	.Request()
	.PostAsync();

```