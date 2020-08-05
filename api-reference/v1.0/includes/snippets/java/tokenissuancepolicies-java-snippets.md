---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITokenIssuancePolicyCollectionPage tokenIssuancePolicies = graphClient.policies().tokenIssuancePolicies()
	.buildRequest()
	.get();

```