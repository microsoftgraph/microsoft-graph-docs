---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenIssuancePolicy tokenIssuancePolicy = new TokenIssuancePolicy();
tokenIssuancePolicy.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/policies/tokenIssuancePolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9"));

graphClient.applications("{id}").tokenIssuancePolicies().references()
	.buildRequest()
	.post(tokenIssuancePolicy);

```