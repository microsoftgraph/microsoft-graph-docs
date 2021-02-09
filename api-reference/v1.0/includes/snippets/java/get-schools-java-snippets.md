---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationSchoolCollectionWithReferencesPage schools = graphClient.education().classes("{class-id}").schools()
	.buildRequest()
	.get();

```