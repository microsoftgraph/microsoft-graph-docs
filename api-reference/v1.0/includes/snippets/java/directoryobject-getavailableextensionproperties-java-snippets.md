---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean isSyncedFromOnPremises = false;

graphClient.directoryObjects()
	.getAvailableExtensionProperties(DirectoryObjectGetAvailableExtensionPropertiesParameterSet
		.newBuilder()
		.withIsSyncedFromOnPremises(isSyncedFromOnPremises)
		.build())
	.buildRequest()
	.post();

```