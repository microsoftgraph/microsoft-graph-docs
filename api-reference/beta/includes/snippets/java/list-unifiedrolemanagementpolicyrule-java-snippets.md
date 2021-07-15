---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyRuleCollectionPage rules = graphClient.policies().roleManagementPolicies("{unifiedRoleManagementPolicyId}").rules()
	.buildRequest()
	.get();

```