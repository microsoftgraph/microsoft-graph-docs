---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UUID servicePlanId = UUID.fromString("28f42d6f-8034-4a0f-9d8a-a218a63b3299");

UUID skuId = UUID.fromString("465a2a90-5e59-456d-a7b8-127b9fb2e484");

graphClient.me()
	.activateServicePlan(UserActivateServicePlanParameterSet
		.newBuilder()
		.withServicePlanId(servicePlanId)
		.withSkuId(skuId)
		.build())
	.buildRequest()
	.post();

```