---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationSchoolDeltaCollectionPage delta = graphClient.education().schools()
	.delta()
	.buildRequest()
	.get();

```