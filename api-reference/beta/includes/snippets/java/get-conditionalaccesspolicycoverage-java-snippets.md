---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicyCoverage conditionalAccessPolicyCoverage = graphClient.tenantRelationships().managedTenants().conditionalAccessPolicyCoverages("{conditionalAccessPolicyCoverageId}")
	.buildRequest()
	.get();

```