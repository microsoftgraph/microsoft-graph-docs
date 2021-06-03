---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicy unifiedRoleManagementPolicy = graphClient.policies().roleManagementPolicies("f93a5c37-5c37-f93a-375c-3af9375c3af9")
	.buildRequest()
	.get();

```