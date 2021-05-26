---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSettingTemplateCollectionPage groupSettingTemplates = graphClient.groupSettingTemplates()
	.buildRequest()
	.get();

```