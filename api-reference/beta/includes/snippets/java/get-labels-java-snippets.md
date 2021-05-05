---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InformationProtectionLabelCollectionPage labels = graphClient.me().informationProtection().policy().labels()
	.buildRequest()
	.get();

```