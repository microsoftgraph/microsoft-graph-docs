---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessFlowTemplateCollectionPage businessFlowTemplates = graphClient.businessFlowTemplates()
	.buildRequest()
	.get();

```