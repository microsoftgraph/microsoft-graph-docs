---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyRule unifiedRoleManagementPolicyRule = graphClient.policies().roleManagementPolicies("{unifiedRoleManagementPolicyId}").rules("{unifiedRoleManagementPolicyRuleId}")
	.buildRequest()
	.get();

```