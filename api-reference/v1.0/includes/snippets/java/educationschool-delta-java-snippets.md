---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSchoolDeltaCollectionPage delta = graphClient.education().schools()
	.delta()
	.buildRequest()
	.get();

```