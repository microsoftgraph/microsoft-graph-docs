---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skuId = Guid.Parse("6fd2c87f-b296-42f0-b197-1e91e994b900");

var servicePlanId = Guid.Parse("a23b959c-7ce8-4e57-9140-b90eb88a9e97");

await graphClient.Organization["{organization-id}"]
	.ActivateService(null,servicePlanId,skuId)
	.Request()
	.PostAsync();

```