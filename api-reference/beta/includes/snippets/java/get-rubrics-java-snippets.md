---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationRubricCollectionPage rubrics = graphClient.education().me().rubrics()
	.buildRequest()
	.get();

```