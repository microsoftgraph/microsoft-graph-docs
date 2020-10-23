---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IClaimsMappingPolicyCollectionPage claimsMappingPolicies = graphClient.servicePrincipals("{id}").claimsMappingPolicies()
	.buildRequest()
	.get();

```