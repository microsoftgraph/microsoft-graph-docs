---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IInformationProtectionLabelCollectionPage labels = graphClient.me().informationProtection().policy().labels()
	.buildRequest()
	.get();

```