---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsProtectionStateCollectionPage windowsProtectionStates = graphClient.tenantRelationships().managedTenants().windowsProtectionStates()
	.buildRequest()
	.get();

```