---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilitySchedule unifiedRoleEligibilitySchedule = graphClient.roleManagement().directory().roleEligibilitySchedules("5cfd7709-7709-5cfd-0977-fd5c0977fd5c")
	.buildRequest()
	.get();

```