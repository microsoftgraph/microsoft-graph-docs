---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AggregatedPolicyComplianceCollectionPage aggregatedPolicyCompliances = graphClient.tenantRelationships().managedTenants().aggregatedPolicyCompliances()
	.buildRequest()
	.get();

```