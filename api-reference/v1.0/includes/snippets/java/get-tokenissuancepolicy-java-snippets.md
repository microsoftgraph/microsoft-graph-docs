---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenIssuancePolicy tokenIssuancePolicy = graphClient.policies().tokenIssuancePolicies("{id}")
	.buildRequest()
	.get();

```