---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectorySettingTemplate directorySettingTemplate = graphClient.directorySettingTemplates("{id}")
	.buildRequest()
	.get();

```