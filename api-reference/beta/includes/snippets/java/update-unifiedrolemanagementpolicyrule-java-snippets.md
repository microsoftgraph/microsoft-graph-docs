---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyRule unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyRule();
UnifiedRoleManagementPolicyRuleTarget target = new UnifiedRoleManagementPolicyRuleTarget();
unifiedRoleManagementPolicyRule.target = target;

graphClient.policies().roleManagementPolicies("{unifiedRoleManagementPolicyId}").rules("{unifiedRoleManagementPolicyRuleId}")
	.buildRequest()
	.patch(unifiedRoleManagementPolicyRule);

```