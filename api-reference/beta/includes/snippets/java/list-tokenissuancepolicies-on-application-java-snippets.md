---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITokenIssuancePolicyCollectionWithReferencesPage tokenIssuancePolicies = graphClient.applications("{id}").tokenIssuancePolicies()
	.buildRequest()
	.get();

```