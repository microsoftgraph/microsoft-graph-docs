---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InformationProtectionLabel informationProtectionLabel = graphClient.me().informationProtection().policy().labels("{id}")
	.buildRequest()
	.get();

```