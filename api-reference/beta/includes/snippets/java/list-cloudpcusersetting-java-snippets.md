---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcUserSettingCollectionPage userSettings = graphClient.deviceManagement().virtualEndpoint().userSettings()
	.buildRequest()
	.get();

```