---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IGroupSettingCollectionPage groupSettings = graphClient.groupSettings()
	.buildRequest()
	.get();

```