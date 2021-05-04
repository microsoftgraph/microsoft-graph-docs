---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationTemplateCollectionPage applicationTemplates = graphClient.applicationTemplates()
	.buildRequest()
	.get();

```