---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UUID skuId = UUID.fromString("6fd2c87f-b296-42f0-b197-1e91e994b900");

UUID servicePlanId = UUID.fromString("a23b959c-7ce8-4e57-9140-b90eb88a9e97");

graphClient.organization("{:organizationId}")
	.activateService(OrganizationActivateServiceParameterSet
		.newBuilder()
		.withService(null)
		.withServicePlanId(servicePlanId)
		.withSkuId(skuId)
		.build())
	.buildRequest()
	.post();

```