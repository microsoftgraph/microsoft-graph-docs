---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleDefinition unifiedRoleDefinition = graphClient.roleManagement().cloudPC().roleDefinitions("d40368cb-fbf4-4965-bbc1-f17b3a78e510")
	.buildRequest()
	.get();

```