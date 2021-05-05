---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ClaimsMappingPolicyCollectionWithReferencesPage claimsMappingPolicies = graphClient.servicePrincipals("{id}").claimsMappingPolicies()
	.buildRequest()
	.get();

```