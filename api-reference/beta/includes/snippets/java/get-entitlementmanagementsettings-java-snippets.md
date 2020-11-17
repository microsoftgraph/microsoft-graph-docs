---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EntitlementManagementSettings entitlementManagementSettings = graphClient.identityGovernance().entitlementManagement().settings()
	.buildRequest()
	.get();

```