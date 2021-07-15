---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicyCoverageCollectionPage conditionalAccessPolicyCoverages = graphClient.tenantRelationships().managedTenants().conditionalAccessPolicyCoverages()
	.buildRequest()
	.get();

```