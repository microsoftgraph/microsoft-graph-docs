---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyRuleCollectionPage rules = graphClient.policies().roleManagementPolicies("ba9cc2d6-c2d6-ba9c-d6c2-9cbad6c29cba").rules()
	.buildRequest()
	.get();

```