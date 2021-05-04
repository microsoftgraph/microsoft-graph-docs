---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectorySettingTemplateCollectionPage directorySettingTemplates = graphClient.directorySettingTemplates()
	.buildRequest()
	.get();

```