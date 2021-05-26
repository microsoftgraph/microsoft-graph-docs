---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationRubricCollectionPage rubrics = graphClient.education().me().rubrics()
	.buildRequest()
	.get();

```