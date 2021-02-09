---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IBusinessFlowTemplateCollectionPage businessFlowTemplates = graphClient.businessFlowTemplates()
	.buildRequest()
	.get();

```