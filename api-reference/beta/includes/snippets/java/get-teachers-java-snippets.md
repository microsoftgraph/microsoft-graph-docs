---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationUserCollectionPage teachers = graphClient.education().classes("11023").teachers()
	.buildRequest()
	.get();

```