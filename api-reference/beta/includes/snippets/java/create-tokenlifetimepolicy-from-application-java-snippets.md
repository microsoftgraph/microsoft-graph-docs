---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenLifetimePolicy tokenLifetimePolicy = new TokenLifetimePolicy();
tokenLifetimePolicy.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9"));

graphClient.applications("{id}").tokenLifetimePolicies()
	.buildRequest()
	.post(tokenLifetimePolicy);

```