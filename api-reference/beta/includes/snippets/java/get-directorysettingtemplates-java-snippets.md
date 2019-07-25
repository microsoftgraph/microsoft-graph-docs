---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectorySettingTemplateCollectionPage directorySettingTemplates = graphClient.directorySettingTemplates()
	.buildRequest()
	.get();

```