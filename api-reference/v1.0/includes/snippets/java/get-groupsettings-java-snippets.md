---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSettingCollectionPage groupSettings = graphClient.groupSettings()
	.buildRequest()
	.get();

```