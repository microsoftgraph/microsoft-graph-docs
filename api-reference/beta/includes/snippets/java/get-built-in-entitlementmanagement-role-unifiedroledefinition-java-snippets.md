---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleDefinition unifiedRoleDefinition = graphClient.roleManagement().entitlementManagement().roleDefinitions("ba92d953-d8e0-4e39-a797-0cbedb0a89e8")
	.buildRequest()
	.get();

```