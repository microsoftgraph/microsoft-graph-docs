---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content response = graphClient.tenantRelationships().managedTenants().deviceCompliancePolicySettingStateSummarys().{deviceCompliancePolicySettingStateSummaryId}()
	.buildRequest()
	.get();

```